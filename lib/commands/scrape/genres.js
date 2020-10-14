const { parse } = require('node-html-parser');
const axios = require('axios');
const logger = require('../../logger');
const config = require('../../../config');
const { writeCacheFile, getCacheFile, cleanLocation, checkExists } = require('../../utils/files');

const scrapeGenres = async (genresUrl, page) => {
  const url = `${genresUrl.replace('#', page)}`;
  logger.info(`Scraping genres: ${url}`);
  const res = await axios.get(url);
  const parsedHtml = parse(`${res.data}`);
  const items = parsedHtml.querySelectorAll('.products-list .product-list-item');
  const genres = items.map(item => {
    const link = item.getAttribute('href');
    const genre = item.getAttribute('genre');
    return [link, genre];
  });
  return genres;
};

const scrapeAllGenres = async url => {
  let page = 1;
  const courseGenres = [];
  let newTitles = [];
  /* eslint-disable no-await-in-loop */
  do {
    newTitles = await scrapeGenres(url, page);
    courseGenres.push(newTitles);
    page += 1;
  } while (newTitles.length > 0);
  /* eslint-enable no-await-in-loop */
  return courseGenres;
};

const getCourseGenres = async (force = false) => {
  let courseGenres = [];
  const genreFile = checkExists(config.cache.genres);
  if (!genreFile || force) {
    courseGenres = await scrapeAllGenres(config.urls.genres);
    if (config.cache.clean) {
      cleanLocation(config.cache.genres);
    }
    await writeCacheFile(courseGenres, config.cache.genres);
  } else {
    courseGenres = getCacheFile(config.cache.genres);
  }
  return courseGenres;
};

module.exports = getCourseGenres;
