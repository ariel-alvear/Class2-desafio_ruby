class Card
    attr_accessor :number, :pinta
    def initialize(number, pinta)
        @number = number
        @pinta = pinta
    end
end

class Card_deck
    attr_accessor :card_deck_name, :cards
    def initialize(card_deck_name, cards = nil)
        @card_deck_name = card_deck_name
        @cards = []
        13.times do |i|
            i += 1
        @cards.push(Card.new(i, 'C'))
        end
        13.times do |i|
            i += 1
        @cards.push(Card.new(i, 'D'))
        end
        13.times do |i|
            i += 1
        @cards.push(Card.new(i, 'E'))
        end
        13.times do |i|
            i += 1
        @cards.push(Card.new(i, 'T'))
        end
    end

    def shuffle_deck
        @cards.shuffle!
    end

    def take_card
        @cards.pop
    end

    def take_hand(number_of_cards = 5)
        @cards.pop(number_of_cards)
    end
end

#creamos un nuevo mazo de cartas sin joker (4 pintas, 13 cartas por pinta)
deck1 = Card_deck.new('mazo de cartas 1')

#desordenamos el deck1
deck1.shuffle_deck

#sacamos la primera carta
deck1.take_card

#sacamos una mano de cartas, por defecto el valor será 5
deck1.take_hand