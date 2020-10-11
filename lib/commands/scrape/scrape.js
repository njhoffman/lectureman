const _ = require('lodash');
const axios = require('axios');
const { parse } = require('node-html-parser');
const logger = require('../../logger');

const scrapeTitles = async (titlesUrl, page) => {
  const url = `${titlesUrl.replace('#', page)}`;
  logger.info(`Scraping titles: ${url}`);
  const res = await axios.get(url);
  const parsedHtml = parse(`${res.data}`);
  const items = parsedHtml.querySelectorAll('.products-list .product-list-item');
  const titles = items.map(item => {
    const link = item.getAttribute('href');
    const title = item.getAttribute('title');
    return [link, title];
  });
  return titles;
};

const scrapeAllTitles = async url => {
  let page = 1;
  const courseTitles = [];
  let newTitles = [];
  /* eslint-disable no-await-in-loop */
  do {
    newTitles = await scrapeTitles(url, page);
    courseTitles.push(newTitles);
    page += 1;
  } while (newTitles.length > 0);
  /* eslint-enable no-await-in-loop */
  return courseTitles;
};

const getElement = (item, selector, options = {}) => {
  const { attr, idx } = options;
  const sel = _.isNumber(idx) ? item.querySelectorAll(selector) : item.querySelector(selector);

  if (!sel) {
    logger.error(`Cannot find selector: ${selector}`);
    return '';
  }

  let val = '';
  if (_.isNumber(idx)) {
    if (!sel[idx]) {
      logger.error(`Expected index: ${idx} for ${selector}`);
    }
    val = attr ? sel[idx].getAttribute(attr) : sel[idx].text;
  } else {
    val = attr ? sel.getAttribute(attr) : sel.text;
  }
  return val.trim();
};

const scrapeCourse = async (courseUrl, progress) => {
  // eslint-disable-next-line no-param-reassign
  progress.curr += 1;
  logger.info(`${progress.curr}/${progress.total}: Scraping ${courseUrl}`);
  const res = await axios.get(courseUrl);
  const parsedHtml = parse(`${res.data}`);

  const courseMap = {
    title: '.product-name',
    description: '.course-description',
    overview: '.course-description p',
    rating: '.BVRRNumber.BVRRRatingNumber',
    reviews: '.reviews-count',
    recommended: '.ratingbox__summary-callout',
    courseNumber: '.course-number'
  };

  const courseData = _.mapValues(courseMap, val => getElement(parsedHtml, val));

  _.merge(courseData, {
    url: courseUrl,
    folderName: courseUrl.split('/').pop().replace('.html', ''),
    courseNumber: courseData.courseNumber.replace(/Course No\.\s/, ''),
    recommended: courseData.recommended.replace(/ of reviewers would recommend this product/, '')
  });

  courseData.lectureAverage = getElement(parsedHtml, '.course-counters span', { idx: 1 })
    .replace(/Average /, '')
    .replace(/ each/, '');

  courseData.images = parsedHtml
    .querySelectorAll('.product-img-column .thumbnails li')
    .map(item => ({
      full: getElement(item, 'a.cloud-zoom-gallery', { attr: 'rel' }).split('smallImage: ')[1],
      thumbnail: getElement(item, 'a.cloud-zoom-gallery img', { attr: 'src' })
    }));

  courseData.formats = parsedHtml
    .querySelectorAll('.format-section .section-item-title')
    .map(item => item.text.replace(' Includes:', ''));

  courseData.speakers = parsedHtml.querySelectorAll('.professorContain').map(item => ({
    name: getElement(item, '.professor-data .name'),
    description: getElement(item, '.professor-data .description'),
    pic: getElement(item, '.professorBlock .prof-icon', { attr: 'style' })
    // bio: popup window with information
  }));

  courseData.lectures = parsedHtml.querySelectorAll('.lectures-list li').map(item => ({
    number: getElement(item, '.lecture-counter'),
    title: getElement(item, '.lecture-title'),
    description: getElement(item, '.lecture-description-block').replace(/\s+x$/, '')
  }));

  return courseData;
};

module.exports = {
  scrapeCourse,
  scrapeAllTitles
};
