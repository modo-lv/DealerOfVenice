gulp = require \gulp
jade = require \gulp-jade
livescript = require \gulp-livescript

module?.exports = class GulpPhase
	(@$cfg) ->

		# Basic dependency
		gulp.task \when_ready, [\phase0]

		# Compile .jade files into .html
		gulp.task \jade, [\when_ready], ->
			gulp.src "#{$cfg.src.dir}/**/*.jade"
				.pipe jade!
				.pipe gulp.dest "#{$cfg.tmp.dir}"

		# Compile .ls into .js
		gulp.task \livescript, [\when_ready], ->
			gulp.src "#{$cfg.src.dir}/**/*.ls"
				.pipe livescript!
				.pipe gulp.dest "#{$cfg.tmp.dir}"

		# Main phase 1 entry point
		gulp.task \phase1, [\jade, \livescript]


