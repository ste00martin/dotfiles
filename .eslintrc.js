module.exports = {
  env: {
    browser: true,
    node: true,
    jest: true,
    es6: true,
  },
  parserOptions: {
    sourceType: 'module',
  },
  parser: 'babel-eslint',
  rules: {
    'operator-linebreak': 0,
    'no-implicit-coercion': 0,
    'no-warning-comments': 0,
    'semi': ["error", "never"],
  }
}
