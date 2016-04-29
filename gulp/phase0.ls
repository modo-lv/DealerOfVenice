del = require \del
gulp = require \gulp
mocha = require \gulp-mocha
livescript = require \gulp-livescript

module?.exports = class GulpPhase

	(@$cfg) ->

		# Run the compiled unit tests
		gulp.task \run-unit-tests, ->
			gulp.src "#{$cfg.src.test.dir}/**/*.ls"
				.pipe mocha { reporter: \dot }

		gulp.task \phase0, [\run-unit-tests]
