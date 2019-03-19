# import dd from 'ddeyes'
import del from 'del'

import gulp, { series } from 'gulp'
import rename from 'gulp-rename'

import rollup from 'gulp-better-rollup'
import {
  coffee2
  babel
} from 'cfx.rollup-plugin-coffee2'

import cleanup from 'rollup-plugin-cleanup'

gulp.task 'clean', (cb) =>
  del [ './lib' ]
  , cb

gulp.task 'buildEs', =>

  gulp.src './src/index.coffee'
  .pipe rollup
    plugins: [
      coffee2
        bare: true
        sourceMap: true
      cleanup()
    ]
  , 'es'
  .pipe rename 'index.es.js'
  .pipe gulp.dest './lib'

gulp.task 'buildCjs', =>

  gulp.src './lib/index.es.js'
  .pipe rollup
    plugins: [
      babel()
      cleanup()
    ]
  , 'cjs'
  .pipe rename 'index.js'
  .pipe gulp.dest './lib'

gulp.task 'build'
,
  series(
    'buildEs'
    'buildCjs'
  )

gulp.task 'rebuild'
,
  series(
    'clean'
    'build'
  )
