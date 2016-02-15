app.controller 'AnswerCtrl', ($scope, $http, $filter, $mdDialog, $mdToast) ->

    apiSite = 'http://mysquishy.hol.es/balltoro_poll_api/'

    $http.get(apiSite + 'get_poll_list.php').success (response) ->
        $scope.poll_list = response.POLL
        return

    $scope.A = 'swww'
    return
