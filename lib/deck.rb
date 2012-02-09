require "../lib/card"
require "../lib/suit"
class Deck
  def initialize
    @deck=[
      Card.new(Suit::SPADE,1),
      Card.new(Suit::SPADE,2),
      Card.new(Suit::SPADE,3),
      Card.new(Suit::SPADE,4),
      Card.new(Suit::SPADE,5),
      Card.new(Suit::SPADE,6),
      Card.new(Suit::SPADE,7),
      Card.new(Suit::SPADE,8),
      Card.new(Suit::SPADE,9),
      Card.new(Suit::SPADE,10),
      Card.new(Suit::SPADE,11),
      Card.new(Suit::SPADE,12),
      Card.new(Suit::SPADE,13),
      Card.new(Suit::CLUB,1),
      Card.new(Suit::CLUB,2),
      Card.new(Suit::CLUB,3),
      Card.new(Suit::CLUB,4),
      Card.new(Suit::CLUB,5),
      Card.new(Suit::CLUB,6),
      Card.new(Suit::CLUB,7),
      Card.new(Suit::CLUB,8),
      Card.new(Suit::CLUB,9),
      Card.new(Suit::CLUB,10),
      Card.new(Suit::CLUB,11),
      Card.new(Suit::CLUB,12),
      Card.new(Suit::CLUB,13),
      Card.new(Suit::HEART,1),
      Card.new(Suit::HEART,2),
      Card.new(Suit::HEART,3),
      Card.new(Suit::HEART,4),
      Card.new(Suit::HEART,5),
      Card.new(Suit::HEART,6),
      Card.new(Suit::HEART,7),
      Card.new(Suit::HEART,8),
      Card.new(Suit::HEART,9),
      Card.new(Suit::HEART,10),
      Card.new(Suit::HEART,11),
      Card.new(Suit::HEART,12),
      Card.new(Suit::HEART,13),
      Card.new(Suit::DIAMOND,1),
      Card.new(Suit::DIAMOND,2),
      Card.new(Suit::DIAMOND,3),
      Card.new(Suit::DIAMOND,4),
      Card.new(Suit::DIAMOND,5),
      Card.new(Suit::DIAMOND,6),
      Card.new(Suit::DIAMOND,7),
      Card.new(Suit::DIAMOND,8),
      Card.new(Suit::DIAMOND,9),
      Card.new(Suit::DIAMOND,10),
      Card.new(Suit::DIAMOND,11),
      Card.new(Suit::DIAMOND,12),
      Card.new(Suit::DIAMOND,13)
    ]
  end

  def shuffle!
    @deck.shuffle!
  end
  def getQuarter(q)
    raise "NotValidQuarterValue" if q>4
    @deck[((q-1)*13)..(q*13-1)]
  end
end