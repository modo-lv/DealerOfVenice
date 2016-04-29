$cfg = {}

# Source files, folders and other config
$cfg.src = {}
	..dir = "./src"
	..test = {}
		..dir = "./test"

# Temporary files, folders and other config
$cfg.tmp = {}
	..dir = "./tmp"
	..test = {}
		..dir = "#{$cfg.tmp.dir}/test"

# Deployment/publish files, folders and other config
$cfg.pub = {}
	..dir = "./pub"
	..test = {}
		..dir = "#{$cfg.pub.dir}/test"

module?.exports = $cfg