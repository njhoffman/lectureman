const logger = require('loglevel');
const prefix = require('loglevel-plugin-prefix');
const chalk = require('chalk');
const util = require('util');
const stripAnsi = require('strip-ansi');

const config = require('../config');

/* eslint-disable no-octal */
const resetColor = '\x1B[0m';

const padRight = (inputStr, len) => {
  const strLen = stripAnsi(inputStr).length;
  const ansiLen = inputStr.length - strLen;
  let str = inputStr;
  if (strLen !== inputStr.length) {
    // has ansi colors, include reset code to terminate correctly
    str = strLen >= len ? `${inputStr.slice(0, len + ansiLen - 8)}...${resetColor}` : inputStr;
  } else {
    str = strLen >= len ? `${inputStr.slice(0, len + ansiLen)}` : inputStr;
  }
  return len > strLen ? str + new Array(len - strLen + 1).join(' ') : str;
};

const inspect = obj => util.inspect(obj, { colors: true, depth: 10 });

const colors = {
  TRACE: chalk.magenta,
  DEBUG: chalk.cyan,
  INFO: chalk.blue,
  WARN: chalk.yellow,
  ERROR: chalk.red
};

prefix.reg(logger);
logger.setLevel(config.logLevel || 'debug');

prefix.apply(logger, {
  format: (level, name, timestamp) =>
    `${chalk.gray(`[${timestamp}]`)} ${colors[level.toUpperCase()](
      padRight(level, 5)
    )} ${chalk.green(`${name}:`)}`
});

prefix.apply(logger.getLogger('critical'), {
  format: (level, name, timestamp) => chalk.red.bold(`[${timestamp}] ${level} ${name}:`)
});

module.exports = { ...logger };
