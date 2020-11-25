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
end

#probamos ahora la creación de una baraja de cartas, sin los joker
deck1 = Card_deck.new('mazo de cartas 1')

