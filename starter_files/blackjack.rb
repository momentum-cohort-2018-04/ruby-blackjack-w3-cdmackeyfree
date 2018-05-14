Suit_array = ["Clubs","Hearts","Spades","Diamonds"]
Rank_array = ["1","2","3","4","5","6","7","8","9","A", "K", "Q", "J"]

class Card
    attr_accessor :rank, :suit, :value
    
    @@suit_value = Hash[ Suit_array.each_with_index.to_a ]
    @@rank_value = Hash[ Rank_array.each_with_index.to_a ]

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end

    def value 
        if @rank.to_i.include? 2..9
            value = @rank
        elsif @rank == "A"
            value = 11
        else @rank == "K" || "Q" || "J"
            value = 10
        end
    end

    def card_value_string
        puts  "#{@rank} of #{@suit} with a value of #{@value}"
    end
end

class Deck
    attr_accessor :cards

    def initialize
        @cards = []
        Suit_array.each do |suit|
            Rank_array.each do |rank|
                @cards << Card.new(rank, suit)
            end
        end
    end

    def shuffle
        @cards.shuffle!
    end

    def draw
        @cards.pop
    end

    def cards_left
        @cards.length
    end

end


class Player
    attr_accessor :hand, :hand_total, :aces

    @@deck = Deck.new
    @@wallet = 100
    
    def initialize
        @hand = []
        @hand_total = 0
        @aces = aces
        2.times do
            card = deck.draw
            if @hand_total == 0
               @hand_total == card.value.to_i 
               @hand << card
            else
                @hand_total += card.value.to_i
                @hand << card
        end
    end

    def hit
        card = deck.draw
        if @hand_total == 0  
            @hand_total = card.value.to_i 
            @hand << card
        else
            @hand_total += card.value.to_i
            @hand << card
        end
    end

    def ace_value
        if @hand_total > 21 && @ace_count > 0
          @ace_count == 1
          @hand_total = @hand_total - 10
        end
      end

    def bust
        if @hand_total > 21 
            puts "You bust!"
    end

#     def mo_money
#         #if wins wallet + 10
#         #if bust wallet - 10
#         #if lose wallet -10
#     end

def hand_string
    puts "#{@hand.to_s}, total value #{@hand_total}"
  end
end

class Dealer < Player
    attr_accessor :dealer_hand, :dealer_hand_total

    def initialize
        @dealer_hand = []
        @dealer_hand_total = 0
        @aces = aces
        2.times do
            card = deck.draw
            if @dealer_hand_total == 0
               @dealer_hand_total == card.value.to_i 
               @dealer_hand << card
            else
                @dealer_hand_total += card.value.to_i
                @dealer_hand << card
        end
    end

    # def should_hit
    #      if @dealer_hand_total < 17 
    #         "H"
    #     elsif total >= 17 && total is =< 21 
    #          "S"
    # end

#     def comp_to_player
#         # if dealer_hand > hand - lose
#         #if dealer_hand < hand - win
#         #if hand > 21 - bust
#     end
# end
end


# Game play below? Maybe?

@@deck.shuffle!

puts "A new deck has been shuffled and there are #{deck.remaining} cards"

player = Player.new
dealer = Dealer.new

puts "Hello and welcome to the game of blackjack! Let's begin."

# You have $100 and bet $10.
# You have a 9 and a 8 in your hand. Your total is 15.
# Do you want to (h)it or (s)tand? H

# You hit. You now have a 9, 8, and 4 in your hand. Your total is 19.
# Do you want to (h)it or (s)tand? S

# You stand. Your total is 19.

# The dealer hits.
# The dealer stands. The dealer has a total of 20. You lose!

# ---

# You have $90 and bet $10.
# You have an A and a 7 in your hand. Your total is 18.
# Do you want to (h)it or (s)tand? H

# You hit. You now have an A, 7, and 9 in your hand. Your total is 17.
# Do you want to (h)it or (s)tand? H

# You hit. You now have an A, 7, 9, and 5 in your hand. Your total is 22.
# You bust!

# ---

# You have $80 and bet $10.
# You have a 5 and a 5 in your hand. Your total is 10.
# Do you want to (h)it or (s)tand? H

# You hit. You now have a 5, 5, and A in your hand. Your total is 21.

# The dealer stands. The dealer has a total of 19. You win!

# ---

# You have $90 and bet $10.
end