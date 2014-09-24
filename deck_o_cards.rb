def deck_o_cards
  values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
  suits = ['hearts', 'diamonds', 'clubs', 'spades']
deck = []
values.each do |val|
   suits.each do |suit|
      card = {suit: suit, value: val}
      deck << card
   end
end
return deck 
end
#  Splits deck in to two halves and switches them.
def split(deck)
deckA = []
deckB = []
(0..25).each do |x|
   deckA << deck[x]
end
(26..51).each do |x|
   deckB << deck[x]
end
puts deckA + deckB
end
#shuffles deck number of times as specfied recursively.
def shuffle(deck, num)
return deck if num == 0
   deckA = []
   deckB = []
   deckShuff = []
   (0..25).each do |x|
      deckA << deck[x]
   end

   (26..51).each do |x|
      deckB << deck[x]
   end

   (0..25).each do |x|
      deckShuff << deckB[x]
      deckShuff << deckA[x]
   end
   shuffle(deckShuff, num-1)
end

shuffledDeck = shuffle(deck_o_cards, 26)
puts shuffledDeck
puts "This deck has #{deck_o_cards.length} cards"
puts "The top card is the #{shuffledDeck[0][:value]} of #{shuffledDeck[0][:suit]}"
