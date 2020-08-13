const querystring = require('querystring');
const axios = require('axios');
const { parse } = require('node-html-parser');
const { spawn } = require('child_process');
const config = require('../../config');
const logger = require('../logger');

const getHTML = url =>
  new Promise((resolve, reject) => {
    const args = [url, '-s'];
    const curl = spawn('curl', args);
    let outputData = '';
    curl.stdout.on('data', data => {
      outputData += data;
    });

    curl.stderr.on('data', data => {
      console.log('Error Data', data.toString());
      reject(new Error(data));
    });

    curl.on('close', () => resolve({ html: outputData }));
  });

const searchSite = async (term, url) => {
  const searchUrl = `${url}?${querystring.stringify({ q: term })}`;
  logger.info(`Searching for ${term}`);
  logger.debug(`URL: ${searchUrl}`);
  // const { html } = await getHTML(searchUrl);
  const res = await axios.get(searchUrl);
  const parsedHtml = parse(`${res.data}`);
  const items = parsedHtml.querySelectorAll('.products-list .item');
  return items;
};

const searchCommand = async cmd => {
  const searchTerm = cmd;
  const { searchUrl } = config;

  const results = await searchSite(searchTerm, searchUrl);

  console.log('RESULTS', results);
  // logger.info(`\nFinished writing ${writeResults.length} torrents`);
};

module.exports = searchCommand;
