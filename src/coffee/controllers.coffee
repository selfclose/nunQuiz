angular.module('starter.controllers', [])

.controller('DashCtrl', ($scope, $state) ->
    $scope.goTest = ->
        console.log('YES')
        $state.go('tab.main')
)

.controller('ChatsCtrl', ($scope, Chats) ->
    $scope.chats = Chats.all()

    $scope.remove = (chat) ->
        Chats.remove chat
        return

    return
)

.controller('ChatDetailCtrl', ($scope, $stateParams, Chats) ->
    $scope.chat = Chats.get($stateParams.chatId)
    return
)

.controller 'AccountCtrl', ($scope) ->
    $scope.settings = enableFriends: true
    return
