gulp = require \gulp
del = require \del

$cfg = require "./gulp/config"

/*
 Processing happens in two phases.
 Phase 0 runs unit tests.
 Phase 1 does the simple pre-processing: compiles .jade to .html, .sass to .css etc.
 Phase 2 does the more involved stuff like browserifying and other stuff that needs to work on
 pre-processed .html, .js et al. files from phase 1.
 Phase 3 runs unit tests on the compiled phase 2 output.
*/

for phase from 0 to 3
	cls = require "./gulp/phase#phase"
	phase = new cls($cfg)

# Run everything
gulp.task \default, [\phase0 \phase1 \phase2], ->
	# Clean up after everything is done
	del.sync "#{$cfg.tmp.dir}", force: true
