class PlayerController
	(@$scope, @playerService) !->
		@$scope <<< @playerService.player;



angular? .module \dealer .controller \playerController, ($scope, playerService) ->
	new PlayerController(...)

module? .exports = PlayerController