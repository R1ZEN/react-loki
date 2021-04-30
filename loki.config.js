module.exports = {
  chromeSelector: '.wrapper > *, #root > *, .story-decorator > *',
  configurations: {
    'chrome.laptop': {
      target: 'chrome.app',
      width: 1366,
      height: 768,
    },
  },
  fetchFailIgnore: 'localhost:1234/get',
};
