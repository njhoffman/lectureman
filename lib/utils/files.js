const _ = require('lodash');
const fs = require('fs');
const path = require('path');
const logger = require('../logger');

const checkExists = target => {
  try {
    const stat = fs.statSync(target);
    return stat;
  } catch {
    return false;
  }
};

const cleanLocation = target => {
  const location = checkExists(path.resolve(target));
  if (location && location.isDirectory()) {
    logger.info(`Cleaning directory: ${target}`);
    return fs.rmdirSync(target, { recursive: true });
  } else if (location && location.isFile()) {
    logger.info(`Removing file: ${target}`);
    return fs.unlinkSync(target);
  }
  return false;
};

const writeCacheFile = (data, filePath) => {
  const cacheFile = filePath.split('/').pop();
  const cacheFolder = filePath.replace(cacheFile, '') || '/';
  const folder = path.resolve(cacheFolder);
  if (!fs.existsSync(folder)) {
    logger.info(`Creating cache folder: ${folder}`);
    fs.mkdirSync(folder, { recursive: true });
  }
  const cachePath = path.join(folder, cacheFile);
  logger.debug(`Writing cache file to :${cachePath}`);
  return fs.writeFileSync(cachePath, JSON.stringify(data));
};

const getCacheFile = (data, folder, progress) => {
  const { curr, total } = progress;
  const filePath = path.join(path.resolve(folder), _.last(data.url.split('/')));
  if (!fs.existsSync(filePath)) {
    logger.debug(`No cache found: ${filePath}`);
    return false;
  }
  logger.debug(`(${curr}/${total}) Found cache: ${filePath}`);
  return JSON.parse(fs.readFileSync(filePath));
};

module.exports = {
  cleanLocation,
  checkExists,
  writeCacheFile,
  getCacheFile
};
