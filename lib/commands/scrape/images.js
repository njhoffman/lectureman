const fs = require('fs');
const axios = require('axios');
const Promise = require('bluebird');
const logger = require('../../logger');

let imgCount = 0;
const saveImage = async (url, savePath) => {
  imgCount += 1;
  logger.debug(`(${imgCount}) Downloading: ${url.split('/').pop()} to ${savePath}`);
  console.log(url);
  const writeStream = fs.createWriteStream(savePath);
  const picRes = await axios({
    url,
    method: 'get',
    responseType: 'stream'
  });
  console.log('DONE');
  return picRes.data.pipe(writeStream);
};

const writeImages = async data => {
  logger.info(`Downloading ${data.images.length} images to cache: ${data.cachePath}`);
  return Promise.map(
    data.images,
    async (image, idx) => {
      await saveImage(image.thumbnail, `${data.cachePath}/${idx}_thumbnail.jpg`);
      await saveImage(image.full, `${data.cachePath}/${idx}_full.jpg`);
    },
    { concurrency: 1 }
  );
};

module.exports = writeImages;
