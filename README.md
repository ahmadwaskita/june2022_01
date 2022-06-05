# Test for Datasaur

This repository contain test for the following :

 - API Testing
 - Spacex Wiki Testing

Setup Environment
-     

**Node JS**

The installer for node.js can be found here: https://nodejs.org/en/download/
-  check node installed properly by running `node -v` on terminal, this should print node version on terminal.
-  check npm installed properly by running `npm -v` on terminal, this should print npm version on terminal.

**Playwright**

The complete guide for playwright installation can be found here: https://playwright.dev/docs/intro 
 Installation command:

    > npm i -D @playwright/test
    # install supported browser
    > npx playwright install

**Newman**

The complete guide for newman installation can be found here: https://www.npmjs.com/package/newman 
Installation command:

    # install newman and html reporter
    > npm i newman newman-reporter-htmlextra

Running the test
- 
All test script is simplified on file package.json:
- To run api spacex test: `npm run test-spacex-api`
- To run wiki spacex test: `npm run test-spacex-wiki`

View test report
-
The test report for `test-spacex-wiki` will be generated on directory `playwright-report` with filename `index.html`

The test report for `test-spacex-api` will be generated on directory `test_result` with filename `spacex_api.html`

Gherkin testcase for WhatsApp desktop
-
The gherkin testcase file can be found on directory `source/feature` and it contains 10 files:

    > 01.chat.feature
    > 02.notification.feature
    > 03.photos.feature
    > 04.documents.feature
    > 05.group_chat.feature
    > 06.starred_message.feature
    > 07.voice_call.feature
    > 08.video_call.feature
    > 09.voice_messge.feature
    > 10.status_updates.feature