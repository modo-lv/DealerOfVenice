(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
(function(){
  var diaryApp;
  diaryApp = angular.module('dealer', ['ngRoute']);
  require('./modules/player/player-controller.js');
  require('./modules/player/player-service.js');
}).call(this);

},{"./modules/player/player-controller.js":2,"./modules/player/player-service.js":3}],2:[function(require,module,exports){
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

},{}],3:[function(require,module,exports){
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

},{}]},{},[1]);
