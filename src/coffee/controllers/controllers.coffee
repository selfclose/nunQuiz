app.controller('ChatsCtrl', ($scope, Chats) ->
    $scope.chats = Chats.all()

    $scope.remove = (chat) ->
        Chats.remove chat
        return

    return
)

app.controller('ChatDetailCtrl', ($scope, $stateParams, Chats) ->
    $scope.chat = Chats.get($stateParams.chatId)
    return
)

app.controller 'AccountCtrl', ($scope) ->
    $scope.settings =
        enableFriends: true
    return
