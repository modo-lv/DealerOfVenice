gulp = require \gulp

module?.exports = class GulpPhase
	(@$cfg) ->

		# Set as a dependency for all tasks
		gulp.task \when-ready, [\phase1]

		# Copy over vendor libs straight from source
		gulp.task \vendor, [\when-ready], ->
			gulp.src "#{$cfg.src.dir}/vendor/**"
				.pipe gulp.dest "#{$cfg.pub.dir}/vendor"

		# Copy compiled .html and .js files from temp directory
		gulp.task \copy-html, [\when-ready], ->
			gulp.src "#{$cfg.tmp.dir}/**/*.{html,js}"
				.pipe gulp.dest "#{$cfg.pub.dir}"

		gulp.task \phase2, [\copy-html, \vendor]
