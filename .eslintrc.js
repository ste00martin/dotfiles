module.exports = {
  extends: [
    '@strv/javascript/environments/react/v15',
    '@strv/javascript/environments/react/optional',
    '@strv/javascript/coding-styles/recommended',
    '@strv/javascript/coding-styles/react',
    // "@strv/javascript/coding-styles/flow",
    // "@strv/javascript/environments/flow/recommended"
  ],
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
  }
}
