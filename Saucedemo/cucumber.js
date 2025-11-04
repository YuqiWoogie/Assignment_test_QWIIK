module.exports = {
  default: {
    require: ['features/steps/**/*.js', 'support/**/*.js'],
    format: [
      'progress',
      'json:reports/cucumber_report.json'
    ],
    publishQuiet: true
  }
};
