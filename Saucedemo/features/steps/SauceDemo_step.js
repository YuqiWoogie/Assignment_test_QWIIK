const { Given, When, Then } = require('@cucumber/cucumber');
const { chromium } = require('playwright');
const { expect } = require('@playwright/test');
const pageObjects = require('../cons/cons');


Given('the user accesses {string}', async function (url) {
  this.browser = await chromium.launch({ headless: false, slowMo: 200 });
  this.page = await this.browser.newPage();
  await this.page.goto(url);
});

When('the user sees the login page', async function () {
  await expect(this.page.locator(pageObjects.usernameInput)).toBeVisible();
});

When('enters a valid username', async function () {
  await this.page.fill(pageObjects.usernameInput, 'standard_user');
});

When('enters a valid password', async function () {
  await this.page.fill(pageObjects.passwordInput, 'secret_sauce');
});

When('clicks on the login button', async function () {
  await this.page.click(pageObjects.loginButton);
});

Then('the user should be able to see the inventory page', async function () {
  await expect(this.page.locator(pageObjects.inventoryList)).toBeVisible();
});

Then('user should be able to click on sort dropdown', async function () {
  const dropdown = this.page.locator(pageObjects.sortDropdown);
  await dropdown.waitFor({ state: 'visible', timeout: 10000 });
  await dropdown.click();
});

Then('user should be able to select sort name A-Z', async function () {
  await this.page.selectOption(pageObjects.sortDropdown, 'az');
});

Then('user should be able to see the alphabetical order', async function () {
  const firstItem = await this.page.textContent(pageObjects.firstItemName);
  expect(firstItem).toBe('Sauce Labs Backpack');
});

Then('user should be able to select sort name Z-A', async function () {
  await this.page.selectOption(pageObjects.sortDropdown, 'za');
});

Then('user should be able to see the revers alphabetical order', async function () {
  const firstItem = await this.page.textContent(pageObjects.firstItemName);
  expect(firstItem).toBe('Test.allTheThings() T-Shirt (Red)');
});

Then('user should be able to select sort price low-high', async function () {
  await this.page.selectOption(pageObjects.sortDropdown, 'lohi');
});

Then('user should be able to see the lower price first', async function () {
  const firstPrice = await this.page.textContent(pageObjects.firstItemPrice);
  expect(firstPrice).toBe('$7.99');
});

Then('user should be able to select sort price high-low', async function () {
  await this.page.selectOption(pageObjects.sortDropdown, 'hilo');
});

Then('user should be able to see the higher price first', async function () {
  const firstPrice = await this.page.textContent(pageObjects.firstItemPrice);
  expect(firstPrice).toBe('$49.99');
});

Then('should be able to view an item on the inventory page', async function () {
  await expect(this.page.locator(pageObjects.inventoryList)).toBeVisible();
});

Then('should see the Add to Cart button within the section', async function () {
  await expect(this.page.locator(pageObjects.addToCartButton)).toBeVisible();
});

When('the user clicks on the Add to Cart button', async function () {
  await this.page.click(pageObjects.addToCartButton);
});

Then('the item should be successfully added to the cart', async function () {
  await expect(this.page.locator(pageObjects.removeButton)).toBeVisible();
});

When('the user clicks on the Cart icon', async function () {
  await this.page.click(pageObjects.cartIcon);
});

Then('the user should be able to see the cart page', async function () {
  await expect(this.page.locator(pageObjects.cartList)).toBeVisible();
});

When('the user clicks on the Checkout button', async function () {
  await this.page.click(pageObjects.checkoutButton);
});

Then('the user should be able to see the Your Information page', async function () {
  await expect(this.page.locator(pageObjects.infoPage)).toBeVisible();
});

When('the user enters their First Name, Last Name, and Zipcode', async function () {
  await this.page.fill(pageObjects.firstNameInput, 'Test');
  await this.page.fill(pageObjects.lastNameInput, 'Test');
  await this.page.fill(pageObjects.zipCodeInput, '12345');
});

When('clicks on the Continue button', async function () {
  await this.page.click(pageObjects.continueButton);
});

Then('the user should be able to see the Overview page', async function () {
  await expect(this.page.locator(pageObjects.overviewPage)).toBeVisible();
});

When('the user clicks on the Finish button', async function () {
  await this.page.click(pageObjects.finishButton);
});

Then('the user should be able to see the Order Completion page', async function () {
  await expect(this.page.locator(pageObjects.completionHeader)).toHaveText('Thank you for your order!');
  await this.browser.close();
});
