require 'colorize'
class GameView
  def initialize

  end

  def show_table(player_number,hakem_number)
    case player_number
      when 1
        case hakem_number
          when 1
            puts "            |p3|                 "
            puts "     |P2|          |p4|          "
            puts "            |you|".red+get_hakem_symbol.yellow
          when 2
            puts "            |p3|                 "
            puts "     |P2|"+get_hakem_symbol.yellow+"         |p4|          "
            puts "            |you|".red
          when 3
            puts "            |p3|"+get_hakem_symbol.yellow
            puts "     |P2|          |p4|          "
            puts "            |you|".red
          when 4
            puts "            |p3|                 "
            puts "     |P2|          |p4|"+get_hakem_symbol.yellow
            puts "            |you|".red
        end


      when 2
        case hakem_number
          when 1
            puts "            |p3|                 "
            puts "     |P2|".red+"          |p4|   "
            puts "            |you|"+get_hakem_symbol.yellow
          when 2
            puts "            |p3|                 "
            puts "     |P2|".red+get_hakem_symbol.yellow+"         |p4|          "
            puts "            |you|".red
          when 3
            puts "            |p3|"+get_hakem_symbol.yellow
            puts "     |P2|".red+"          |p4|   "
            puts "            |you|"
          when 4
            puts "            |p3|"
            puts "     |P2|".red+"          |p4|"+get_hakem_symbol.yellow
            puts "            |you|"
        end

      when 3
        case hakem_number
          when 1
            puts "            |p3|                 ".red
            puts "     |p2|"+get_hakem_symbol.yellow+"         |p4|          "
            puts "            |you|"+get_hakem_symbol.yellow
          when 2
          when 3
          when 4
        end

      when 4
        puts "            |p3|                 "
    puts "     |P2|         "+"|p4|          ".red
    puts "            |you|                "
    end
  end

  def show_hand(hand)
    puts "---------------------------------------------------------------------"
    result="|"
    for index in 0..hand.size-1
     card=hand[index]
      if (card.number<=10)
        result+= "#{index}=".white+"#{card.number}#{get_symbol card.suit}|"
      elsif card.number==11
        result+= "#{index}=".white+"J#{get_symbol card.suit}|"
      elsif card.number==12
        result+= "#{index}=".white+"Q#{get_symbol card.suit}|"
      elsif (card.number==13)
        result+= "#{index}=".white+ "K#{get_symbol card.suit}|"
      end
    end
    puts result
    puts "----------------------------------------------------------------------"
  end
  def get_symbol(suit)
    return "♣" if suit== Suit::CLUB
    return "♥".red if suit== Suit::HEART
    return "♦".red if suit== Suit::DIAMOND
    return "♠" if suit== Suit::SPADE
  end

  def get_hakem_symbol
    return "♚"
  end
end
