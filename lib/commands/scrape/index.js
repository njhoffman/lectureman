const _ = require('lodash');
const fs = require('fs');
const Promise = require('bluebird');
const axios = require('axios');

const config = require('../../../config');
const { writeCacheFile, cleanLocation } = require('../../utils/files');
const logger = require('../../logger');
const { scrapeAllTitles, scrapeCourse } = require('./scrape');

const getCourseTitles = async searchTitle => {
  let courseTitles = [];
  // TODO: for else statement check cache if title exists, otherwise scrape all titles
  if (searchTitle === 'all') {
    courseTitles = require('../../../.cache/titles.json');
    // courseTitles = await scrapeAllTitles(config.urls.titles);
    // if (config.cache.clean) {
    //   cleanLocation(config.cache.titles);
    // }
    // await writeCacheFile(courseTitles, config.cache.titles);
  }
  return courseTitles;
};

let imgCount = 0;
const saveImage = async (url, savePath) => {
  imgCount += 1;
  logger.debug(`(${imgCount}) Downloading: ${url.split('/').pop()} to ${savePath}`);
  const picRes = await axios({
    url,
    method: 'get',
    responseType: 'stream'
  });
  picRes.data.pipe(fs.createWriteStream(savePath));
};

const writeCourses = async data => {
  const folder = `${config.cache.courses}/${data.courseNumber.padStart(5, '0')} - ${
    data.folderName
  }`;
  if (config.cache.clean) {
    cleanLocation(folder);
  }
  await writeCacheFile(data, `${folder}/data.json`);

  logger.info(`Downloading ${data.images.length} images to cache folder`);
  await Promise.map(
    data.images,
    async image => {
      await saveImage(image.thumbnail, `${folder}/thumbnail.jpg`);
      await saveImage(image.full, `${folder}/full.jpg`);
    },
    { concurrency: 2 }
  );
};

const scrapeCommand = async cmd => {
  const searchTitle = cmd || 'all';

  const courseTitles = await getCourseTitles(searchTitle);

  const flatTitles = _.reverse(_.flatten(courseTitles).filter(Boolean));
  logger.info(`Fetching ${flatTitles.length} courses`);
  const progress = { curr: 0, total: flatTitles.length };
  const courses = await Promise.map(flatTitles, async ([url]) => scrapeCourse(url, progress), {
    concurrency: 3
  });

  logger.info(`Writing ${courses.length} courses to the cache`);

  await Promise.map(courses, writeCourses, { concurrency: 2 });

  // TODO: populate genres.json
  // TODO: assign genres.json to each data.json
  // https://www.thegreatcourses.com/courses/types/individual-courses/category/better-living/sort-by/name/sort-direction/asc/mode/list
  return courses;
};

module.exports = scrapeCommand;
