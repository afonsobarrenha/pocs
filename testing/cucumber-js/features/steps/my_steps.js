var {defineSupportCode} = require('cucumber');

defineSupportCode(function(context) {

    require('chromedriver')
    var driver = require('selenium-webdriver');

    context.setDefaultTimeout(200 * 1000)

    var setWorldConstructor = context.setWorldConstructor;
    var Given = context.Given
    var When = context.When
    var Then = context.Then

    var expect=require('chai').expect

    var by = driver.By;
    var key = driver.Key;
    var until = driver.until;

    var browser = new driver.Builder()
        .forBrowser('chrome')
        .build();

    Given(/^I am on Codoid Home page$/, function () {
        return browser.get('http://www.google.com/');
    });

    When(/^I click ([^"]*) link$/, function (text) {
        return browser.wait(until.elementLocated(by.name('q')), 10000).sendKeys('webdriver', key.RETURN);
    });

    Then(/^I should see "([^"]*)"$/, function (arg1) {
        var condition = browser.wait(until.titleContains('webdriver'), 10000);
        browser.wait(condition, 5000);
        return browser.quit();
    });

})