gulp = require \gulp

module?.exports = class GulpPhase
	(@$cfg) ->

		gulp.task \ready, [\phase2]

		gulp.task \run-e2e-tests, [\ready]

		gulp.task \phase3, [\run-e2e-tests]