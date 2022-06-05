const { devices } = require('@playwright/test');
const Data = require('./data/data');

const config = {
  workers: 1,
  reporter: [ ['html', { open: 'never' }]],
  timeout: 60 * 1 * 1000,
  use: {
    viewport: { width: 1920, height: 1080 },
    actionTimeout: 60 * 0.2 * 1000,
  },
  
  projects: [
    {
      name: 'chromium-spacex-wiki',
      use: {
        headless: false,
        browserName: 'chromium',
        baseURL: Data.url_spacexwiki,
        launchOptions: {
          slowMo: 1000,
        },
      },
    }
  ]
};

module.exports = config;