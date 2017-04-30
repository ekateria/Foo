const webdriver = require('selenium-webdriver');
var driver;

describe('Google Search', function() {
   before(function() {
     driver = new webdriver.Builder().usingServer().withCapabilities({'browserName': 'chrome' }).build();
   });

   after(function() {
     driver.quit();
   });

   it('should append query to title', function() {
    driver.findElements(webdriver.By.css('[href^="/wiki/"]')).then(function(links){
    console.log('Found', links.length, 'Wiki links.' );
	driver.sleep(5000);
   });
 });
});