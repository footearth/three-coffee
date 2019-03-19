export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '~'
  devprefix: '^'
  plugin: ''
  test: []
  keep: []
  devdep: [
    'autod'
    'cfx.simple-build-tool'
  ]
  dep: [
    'cfx.require-plugin-coffee'
    'ddeyes'
  ]
  semver: [
  ]
  exclude: [
    './dist'
    './src'
    './publish'
    './.autod.conf.js'
  ]
