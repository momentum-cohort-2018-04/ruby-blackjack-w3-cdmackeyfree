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

    def card_value
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


# class Player
#     wallet = 100
#     hand = []

#     def hit_or_stay
#         # if "H" shuffle/deal
#         # if "S" begin dealer's turn
#         # else puts "Please indicate H for hit or S for stay"
#     end

#     def total
#         #hand_total = hand.sum[x,y] ???
#     end

#     def compare
#         # if total > 21 bust
#         # if total =< 17 A = 1
#     end

#     def mo_money
#         #if wins wallet + 10
#         #if bust wallet - 10
#         #if lose wallet -10
#     end
# end

# class Dealer < Player
#     dealer_hand = []

#     def compare
#         # if total < 17 H
#         # elsif total >= 17 && total is =< 21 S
#     end

#     def comp_to_player
#         # if dealer_hand > hand - lose
#         #if dealer_hand < hand - win
#         #if hand > 21 - bust
#     end
# end
