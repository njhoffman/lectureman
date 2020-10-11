const PrettyError = require('pretty-error');
const program = require('commander');
const logger = require('./logger');
const assignCommand = require('./commands/assign');
const searchCommand = require('./commands/search');
const scrapeCommand = require('./commands/scrape');

program
  .command('search <searchTerm>')
  .description('Search the great courses for <searchTerm>')
  .action(searchCommand);

program
  .command('scrape [title]')
  .option('--titles', 'Only scrape titles')
  .option('--courses', 'Only scrape courses')
  .option('--genres', 'Only scrape genres')
  .option('--force', 'Force scraping even if cached')
  .description('Scape all or [title] data and save into cache')
  .action(scrapeCommand);

program
  .command('assign [target]')
  .description('Write id3 fields to [target] files from cached data')
  .action(assignCommand);

program
  .command('rename [target]')
  .description('Rename and move [target] files based on id3 tags to sorted directory')
  .action(assignCommand);

// program
//   .command('list')
//   .option('m', 'missing', 'only show titles missing from configured directories')
//   .description('Rename and move [target] files based on id3 tags to sorted directory')
//   .action(assignCommand);

/* eslint-disable no-console */
program.on('--help', () => {
  console.log('\n', 'Examples:', '\n');
  console.log('  $ lectureman search "The History of Rome"');
  console.log('  $ lectureman assign .../courses/the-history-of-rome.html "./The History of Rome"');
});

program.parse(process.argv);

const pe = new PrettyError();
process.on('unhandledRejection', err => {
  logger.error(`Unhandled Rejection ${err.name}: ${err.message}\n`, pe.render(err));
  // console.error(err);
  process.exit(1);
});

process.on('uncaughtException', err => {
  logger.error(`Unhandled Exception ${err.name}: ${err.message}\n`, pe.render(err));
  // console.error(err);
  process.exit(1);
});
