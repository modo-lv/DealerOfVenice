gulp = require \gulp

browserify = require \browserify
vinyl_stream = require \vinyl-source-stream

module?.exports = class GulpPhase
	(@$cfg) ->

		# Set as a dependency for all tasks
		gulp.task \when-ready, [\phase1]

		# Copy over vendor libs straight from source
		gulp.task \vendor, [\when-ready], ->
			gulp.src "#{$cfg.src.dir}/vendor/**"
				.pipe gulp.dest "#{$cfg.pub.dir}/vendor"

		gulp.task \browserify, [\when-ready], ->
			browserify "#{$cfg.tmp.dir}/index.js", debug: false
				.transform \require-globify
				.bundle! .on "error", (e) -> throw new Error(e)
				.pipe vinyl_stream("index.js")
				.pipe gulp.dest("#{$cfg.tmp.dir}")


		# Copy compiled .html and .js files from temp directory
		gulp.task \copy-html, [\browserify], ->
			gulp.src "#{$cfg.tmp.dir}/**/*.{html,js}"
				.pipe gulp.dest "#{$cfg.pub.dir}"

		gulp.task \phase2, [\copy-html, \vendor]
