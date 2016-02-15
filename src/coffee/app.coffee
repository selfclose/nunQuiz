angular.module('starter', [
  'ionic'
#  'answer.controllers'
  'starter.controllers'
  'starter.services'
  'service.card'
])

.run(($ionicPlatform) ->
  $ionicPlatform.ready ->
# Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
# for form inputs)
    if window.cordova and window.cordova.plugins and window.cordova.plugins.Keyboard
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar true
      cordova.plugins.Keyboard.disableScroll true
    if window.StatusBar
# org.apache.cordova.statusbar required
      StatusBar.styleDefault()
    return
  return
).config ($stateProvider, $urlRouterProvider) ->
  $stateProvider

  .state('tab',
      url: '/tab'
      abstract: true
      templateUrl: 'templates/tabs.html')

  .state('tab.dash',
      url: '/dash'
      views: 'tab-dash':
        templateUrl: 'templates/tab-dash.html'
        controller: 'DashCtrl')

  .state('tab.chats',
      url: '/chats'
      views: 'tab-chats':
        templateUrl: 'templates/tab-chats.html'
        controller: 'ChatsCtrl')

  .state('tab.chat-detail',
      url: '/chats/:chatId'
      views: 'tab-chats':
        templateUrl: 'templates/chat-detail.html'
        controller: 'ChatDetailCtrl')

  .state 'tab.account',
      url: '/account'
      views: 'tab-account':
        templateUrl: 'templates/tab-account.html'
        controller: 'AccountCtrl'
    $urlRouterProvider.otherwise '/tab/dash'
  return
