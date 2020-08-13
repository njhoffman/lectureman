const axios = require('axios');
const { parse } = require('node-html-parser');
const { spawn } = require('child_process');
const config = require('../../config');
const logger = require('../logger');

const scrapeSite = async (courseTitle, url) => {
  logger.info(`Scraping: ${url}`);
  const res = await axios.get(url);
  const parsedHtml = parse(`${res.data}`);
  const items = parsedHtml.querySelectorAll('.products-list .product-list-item');
  items.forEach(item => {
    const link = item.getAttribute('href');
    const title = item.getAttribute('title');
    console.log(link, title);
  });
  return items;
};

// 'http://www.thegreatcourses.com/courses/types/individual-courses/sort-by/name/sort-direction/asc/mode/list'
// https://www.thegreatcourses.com/courses/types/individual-courses/page/2/sort-by/name/sort-direction/asc/mode/list

const scrapeCommand = async cmd => {
  const courseTitle = cmd;
  const { scrapeUrl } = config;

  const results = await scrapeSite(courseTitle, scrapeUrl);
  // console.log('RESULTS', results);
  // logger.info(`\nFinished writing ${writeResults.length} torrents`);
  return results;
};

module.exports = scrapeCommand;
