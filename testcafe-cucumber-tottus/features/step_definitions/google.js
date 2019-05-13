const {Given, When, Then} = require('cucumber');
const Selector = require('testcafe').Selector;

Given('Yo abro la pagina de google', async function() {
    await testController.navigateTo('https://google.com');
});

When('Yo escribo la palabra {string}, async function(text) {
    var input = Selector('.gLFyf').with({boundTestRun: testController});
    await this.addScreenshotToReport();
    await testController.typeText(input, text);
});

Then('Y presiono enter en google', async function(text) {
    await testController.pressKey(text);
});

Then('Y luego selecciono de la lista {string}', async function(text) {
    var firstLink = Selector('#rso').find('a').with({boundTestRun: testController});
    await testController.expect(firstLink.innerText).contains(text);
});

Then(' luego busco y selecciono la sección', async function(text) {
    await testController.pressKey(text);
});


