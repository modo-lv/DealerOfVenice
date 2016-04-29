(function(){
  var PlayerController;
  PlayerController = (function(){
    PlayerController.displayName = 'PlayerController';
    var prototype = PlayerController.prototype, constructor = PlayerController;
    function PlayerController($scope, playerService){
      this.$scope = $scope;
      this.playerService = playerService;
      import$(this.$scope, this.playerService.player);
    }
    return PlayerController;
  }());
  if (typeof angular != 'undefined' && angular !== null) {
    angular.module('dealer').controller('playerController', function($scope, playerService){
      return (function(func, args, ctor) {
        ctor.prototype = func.prototype;
        var child = new ctor, result = func.apply(child, args), t;
        return (t = typeof result)  == "object" || t == "function" ? result || child : child;
  })(PlayerController, arguments, function(){});
    });
  }
  if (typeof module != 'undefined' && module !== null) {
    module.exports = PlayerController;
  }
  function import$(obj, src){
    var own = {}.hasOwnProperty;
    for (var key in src) if (own.call(src, key)) obj[key] = src[key];
    return obj;
  }
}).call(this);
