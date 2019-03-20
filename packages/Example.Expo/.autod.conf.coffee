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
    'react-native'
  ]
  devdep: [
    'autod'
    'babel-preset-expo'
    'cfx.simple-build-tool'
    'cfx.require-plugin-coffee'
    'rimraf'
  ]
  dep: [
    '@babel/plugin-proposal-decorators'
    '@babel/plugin-transform-runtime'
    'ddeyes'
    'expo'
    'expo-graphics'
    'react'
  ]
  semver: [
    'schedule@0.4.0'
  ]
  exclude: [
    './sources'
    './dist'
    './src'
    './public'
    './publish'
    './.expo' 
    './.autod.conf.js'
  ]
