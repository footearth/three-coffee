export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '~'
  devprefix: '^'
  plugin: ''
  test: []
  keep: []
  dep: [
    'cfx.require-plugin-coffee'
    'ddeyes'
    'three'
  ]
  devdep: [
    'autod'

    'del'
    'rimraf'
    'gulp'
    'gulp-rename'
    'gulp-better-rollup'
    'rollup-plugin-cleanup'
    'cfx.rollup-plugin-coffee2'

  ]
  semver: [
  ]
  exclude: [
    './dist'
    './lib'
    './src'
    './publish'
    './.autod.conf.js'
  ]
