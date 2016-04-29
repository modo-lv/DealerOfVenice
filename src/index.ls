diaryApp = angular.module \dealer, [
	\ngRoute
]

require "./modules/*/*-controller.js", mode: \expand
require "./modules/*/*-service.js", mode: \expand