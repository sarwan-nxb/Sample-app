$(document).ready ->
  options = 
    chart:
      renderTo: 'container'
      type: 'spline'
    series: [ {} ]
  $.getJSON 'data.json', (data) ->
    options.series = data
    new (Highcharts.Chart)(options)
    return
  return
app = angular.module('scopeExample', [])
app.controller 'MyController',($scope,$http) ->
  $scope.get_json = $http.get('data.json')
 

