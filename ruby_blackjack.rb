class Human
    attr_accessor :player_name, :player_bankroll, :player_hand
    def initialize(name, bankroll, hand)
        @name = name
        @bankroll = 100
        @hand = hand
    end
end
class The_house
    attr_accessor :name, :bankroll, :hand
    def initialize(name, bankroll, hand)
        @name = name
        @bankroll = 10000
        @hand = hand
    end
end

class Card
    attr_reader :value, :deck
    def initialize(value)
        @value = value 
        @deck = []
    end
    def insert_card_into_deck(face, suit, value)
        @deck << {value: value, suit: suit, face: face}
    end
end

starter_deck = Card.new 1
suits = ['Clubs', 'Spades', 'Diamonds', 'Hearts']
for a in 1..4 do 
    for b in 1..13 do  
        if b == 1 then
            starter_deck.insert_card_into_deck "A", "#{suits[a - 1]}", "11"
        elsif b == 11 then 
            starter_deck.insert_card_into_deck "J", "#{suits[a - 1]}", "10"
        elsif b == 12 then 
            starter_deck.insert_card_into_deck "Q", "#{suits[a - 1]}", "10"
        elsif b == 13 then 
            starter_deck.insert_card_into_deck "K", "#{suits[a - 1]}", "10"
        else 
        starter_deck.insert_card_into_deck b, "#{suits[a - 1]}", "#{b}"
        end 
        starter_deck.deck.shuffle
    end 

    puts "Enter your name"
    answer = gets.chomp

    p Human.new "#{answer}", 100, starter_deck.deck.shuffle.sample(2)
    p The_house.new "Computer", 10000, starter_deck.deck.shuffle.sample(2)
    break
end 





















