
require "../lib/strategy"
class HumanStrategy < Strategy
  attr_accessor:my_hand,:public_moves
  def initialize(my_hand,public_moves)
       @my_hand=my_hand
       @public_moves=public_moves
  end

  def get_next_move
    puts "Please enter the number of that you've chosen:"
    number_of_cards=@my_hand.count
    number=(gets.chomp).to_i
    raise "number is bugger than total number of cards" if number>number_of_cards
    return number if number<=number_of_cards
  end

  def choose_hokm
    puts "Please enter the number of that you've chosen:"
    hokm_number=(gets.chomp).to_i
  return Suit::SPADE if hokm_number==0
  return Suit::CLUB if hokm_number==1
  return Suit::HEART if hokm_number==2
  return Suit::DIAMOND if hokm_number==3
  end
end
