# puts "TODO Implement the game of blackjack."

# class Deck

#     deck_array = [
#         ["A",11], ["K", 10], ["Q", 10], ["J", 10], [10,10], [9,9], [8,8], [7,7], 
#         [6,6], [5,5], [4,4],[3,3], [2,2], 
#         ["A",1], ["K", 10], ["Q", 10], ["J", 10], [10,10], [9,9], [8,8], [7,7], 
#         [6,6], [5,5], [4,4],[3,3], [2,2],
#         ["A",1], ["K", 10], ["Q", 10], ["J", 10], [10,10], [9,9], [8,8], [7,7], 
#         [6,6], [5,5], [4,4],[3,3], [2,2],
#         ["A",1], ["K", 10], ["Q", 10], ["J", 10], [10,10], [9,9], [8,8], [7,7], 
#         [6,6], [5,5], [4,4],[3,3], [2,2]
#     ]

#     def shuffle
#         # card_index = deck_array.rand(0..deck_array.length)
#         card_index = deck_array.rand(0..deck_array.length)
#     end

#     def deal
#         #calls shuffle to get access the card array via index number from the deck_array
#         #returns the 2 card array, card_array = deck_array[card_index]
#         #hand << card_array[0]
#         #delete card_array[0] from deck_array
#     end

#     def dealer_deal
#         #calls shuffle to get access the card array via index number from the deck_array
#         #returns the card array
#         #hand << card_array[0]
#         #delete_if[card_array[0]] ???
#     end
# end

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

