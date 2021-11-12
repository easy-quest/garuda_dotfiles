// Patched for current shell chalk/chalk colors
const styles = require('robbyrussell/utils/colors');

module.exports = {
  /**
   * Проверьте статус Git асинхронно
   */
  async: false,
  /**
   * Prompt prefix and suffix
   */
  prompt: {
    open: styles.bold.open,
    close: styles.bold.close + styles.reset.close
  },
  /**
   * Status code
   */
  status: {
    char: '➜',
    success: styles.green.open,
    failure: styles.red.open,
  },
  /**
   * Directory style
   */
  dir: {
    color: styles.cyan.open
  },
  /**
   * Git status styles
   */
  git: {
    indicator: styles.blue.open,
    branch: styles.red.open,
    dirty: styles.yellow.open,
    dirtyChar: '✗'
  }
};
