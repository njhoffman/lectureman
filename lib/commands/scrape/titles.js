const { parse } = require('node-html-parser');
const axios = require('axios');
const logger = require('../../logger');
const config = require('../../../config');
const { writeCacheFile, getCacheFile, cleanLocation, checkExists } = require('../../utils/files');

const scrapeTitles = async (titlesUrl, page) => {
  const url = `${titlesUrl.replace('#', page)}`;
  logger.info(`Scraping titles: ${url}`);
  const res = await axios.get(url);
  const parsedHtml = parse(`${res.data}`);
  const items = parsedHtml.querySelectorAll('.products-list .product-list-item');
  // https://www.thegreatcourses.com/courses/types/individual-courses/sort-by/name/sort-direction/asc/mode/list
  // .SearchPageResults .ListTile
  //   .ListTile-Preview .Image img.src
  //   .ListTile-Info-Professor
  //   .ListTile-Info-Description
  //   a.ListTile-Info-ViewMore.href
  //     - https://www.thegreatcourses.com/courses/1066-the-year-that-changed-everything-30070
  //   .BuyOptions-Label

  console.log(items);
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

const getCourseTitles = async (force = false) => {
  let courseTitles = [];
  const courseFile = checkExists(config.cache.titles);
  if (!courseFile || force) {
    courseTitles = await scrapeAllTitles(config.urls.titles);
    if (config.cache.clean) {
      cleanLocation(config.cache.titles);
    }
    await writeCacheFile(courseTitles, config.cache.titles);
  } else {
    courseTitles = getCacheFile(config.cache.titles);
  }
  return courseTitles;
};

module.exports = getCourseTitles;
