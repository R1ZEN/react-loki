module.exports = {
  chromeSelector: '.wrapper > *, #root > *, .story-decorator > *',
  diffingEngine: 'pixelmatch',
  configurations: {
    'chrome.laptop': {
      target: 'chrome.docker',
      width: 1366,
      height: 768,
    },
  },
  fetchFailIgnore: 'localhost:1234/get',
};
