const { Before, After } = require('@cucumber/cucumber');

Before(async function () {
  // setup if needed
});

After(async function () {
  if (this.browser) {
    await this.browser.close();
  }
});
