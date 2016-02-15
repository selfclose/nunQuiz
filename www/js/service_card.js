angular.module('service.card', [])

    .factory('card', function() {
        var cards = [{
            id: 0,
            name: 'โพแดง 1',
            number: 1,
            color: 'red',
            lastText: 'You on your way?',
            face: 'img/ben.png'
        }, {
            id: 1,
            name: 'Max Lynx',
            lastText: 'Hey, it\'s me',
            face: 'img/max.png'
        }, {
            id: 2,
            name: 'Adam Bradleyson',
            lastText: 'I should buy a boat',
            face: 'img/adam.jpg'
        }, {
            id: 3,
            name: 'Perry Governor',
            lastText: 'Look at my mukluks!',
            face: 'img/perry.png'
        }, {
            id: 4,
            name: 'Mike Harrington',
            lastText: 'This is wicked good ice cream.',
            face: 'img/mike.png'
        }];

        return {
            all: function() {
                return cards;
            },
            remove: function(card) {
                cards.splice(cards.indexOf(card), 1);
            },
            get: function(cardId) {
                for (var i = 0; i < cards.length; i++) {
                    if (cards[i].id === parseInt(cardId)) {
                        return cards[i];
                    }
                }
                return null;
            }
        };
    });
