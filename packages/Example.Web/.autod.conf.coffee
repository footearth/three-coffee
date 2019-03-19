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
    'parcel-bundler'
    'rimraf'
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
