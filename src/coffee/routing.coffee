app.config ($stateProvider, $urlRouterProvider) ->
    $stateProvider

    .state 'tab',
        url: '/tab'
        abstract: true
        templateUrl: 'templates/tabs.html'

    .state 'tab.login',
        url: '/login'
        views:
            'tab-dash':
                templateUrl: 'templates/tab-dash.html'
                controller: 'LoginCtrl'

    .state 'tab.main',
        url: '/main'
        views:
            'tab-dash':
                templateUrl: 'templates/tab-dash.html'
                controller: 'LoginCtrl'

    .state 'tab.chats',
        url: '/chats'
        views:
            'tab-chats':
                templateUrl: 'templates/tab-chats.html'
                controller: 'ChatsCtrl'

    .state 'tab.chat-detail',
        url: '/chats/:chatId'
        views:
            'tab-chats':
                templateUrl: 'templates/chat-detail.html'
                controller: 'ChatDetailCtrl'

    .state 'tab.account',
        url: '/account'
        views:
            'tab-account':
                templateUrl: 'templates/tab-account.html'
                controller: 'AccountCtrl'

        $urlRouterProvider.otherwise '/tab/login'
    return
