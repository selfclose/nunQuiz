app.controller('LoginCtrl', ($scope, $state) ->
    $scope.goTest = ->
        console.log('YES')
        $state.go('tab.main')
)
