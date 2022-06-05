const { test, expect } = require('@playwright/test');
const SpacexPage = require('../model/spacex.page');

test.describe('test spacex wiki', () => {
    test("validate Elon Musk is SpaceX CEO", async({page}) =>{
        const spacex = new SpacexPage(page);

        // navigate to wiki spacex
        await spacex.navigate();

        // validate spacex ceo
        await spacex.validateCEO();
    })
})