/**
 * Jasmine Reporter Configuration
 * Generates JUnit XML reports for CI/CD
 */

const reporters = require('jasmine-reporters');
const path = require('path');

// Configure JUnit XML reporter for CI/CD
const junitReporter = new reporters.JUnitXmlReporter({
  savePath: path.join(__dirname, '../../results'),
  consolidateAll: true,
  filePrefix: 'test-results'
});

jasmine.getEnv().addReporter(junitReporter);
