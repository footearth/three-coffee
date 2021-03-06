export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '~'
  devprefix: '^'
  plugin: ''
  test: []
  keep: [
    'three-coffee.core'
    'three-coffee.example.bookdemo'
  ]
  devdep: [
    'autod'
    'cfx.simple-build-tool'
    'cfx.require-plugin-coffee'
    'parcel-bundler'
    'rimraf'
  ]
  dep: [
    'ddeyes'
  ]
  semver: [
  ]
  exclude: [
    './sources'
    './dist'
    './src'
    './public'
    './publish'
    './.cache'
    './.autod.conf.js'
  ]
