(function(){
  var PlayerService;
  if (typeof angular != 'undefined' && angular !== null) {
    angular.module('dealer').service('playerService', function(){
      return (function(func, args, ctor) {
        ctor.prototype = func.prototype;
        var child = new ctor, result = func.apply(child, args), t;
        return (t = typeof result)  == "object" || t == "function" ? result || child : child;
  })(PlayerService, arguments, function(){});
    });
  }
  PlayerService = (function(){
    PlayerService.displayName = 'PlayerService';
    var prototype = PlayerService.prototype, constructor = PlayerService;
    function PlayerService(){
      this.player = {
        money: 1000
      };
    }
    return PlayerService;
  }());
}).call(this);
