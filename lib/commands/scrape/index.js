const _ = require('lodash');
const Promise = require('bluebird');

const logger = require('../../logger');
const getCourseTitles = require('./titles');
const getCourseGenres = require('./genres');
const { getCourses, writeCourse } = require('./courses');
const writeImage = require('./images');

const scrapeCommand = async options => {
  const { force, titles, genres, courses } = options;

  const courseTitles = await getCourseTitles(force);
  console.log('Titles', courseTitles);

  const flatTitles = _.reverse(_.flatten(courseTitles).filter(Boolean));
  logger.info(`Fetching ${flatTitles.length} courses`);

  // const courseGenres = await getCourseGenres(force);

  // const allCourses = await getCourses(flatTitles, courseGenres);

  // console.log('ALL', allCourses);
  // logger.info(`Writing ${allCourses.length} courses to the cache`);

  // await Promise.map(allCourses, writeCourse, { concurrency: 2 });
  // await Promise.map(allCourses, writeImage, { concurrency: 1 });

  // TODO: populate genres.json
  // TODO: assign genres.json to each data.json
  return courses;
};

module.exports = scrapeCommand;
