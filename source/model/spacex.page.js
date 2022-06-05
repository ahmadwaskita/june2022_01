const { expect } = require("@playwright/test");

class SpacexPage {
    constructor(page){
        this.page = page;

        // locator
        this.keyPeople = "td.infobox-data.agent li";
    }

    // navigate
    async navigate(){
        await this.page.goto('SpaceX');
    }

    // validate first key people is CEO Elon Musk
    async validateCEO(){
        const ceo = await this.page.locator(this.keyPeople).first();
        console.log(await ceo.textContent());
        await expect(ceo).toContainText(/Elon Musk.*CEO/);
    }
}

module.exports = SpacexPage;