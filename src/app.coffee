_ = require 'lodash'

angular.module 'rileyShows', []
  .controller 'mainController', ($scope, $http) ->
    $scope.shows = {}
    $scope.dorian = 'home'

    # Get shows
    $http.get '/db'
      .success (data, status, headers, config) ->
        console.log data.shows
        $scope.shows = data.shows

angular.module 'rileyAdmin', []
  .controller 'adminController', ($scope, $http) ->
    $scope.schema = {}

    # Get shows
    $http.get '/schema'
      .success (data, status, headers, config) ->
        console.log data
        $scope.schema = data
