# encoding: utf-8

require 'colorize'
#require 'suit'
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
            puts "     |P2|".red+get_hakem_symbol.yellow+"         |p4|"
            puts "            |you|"
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
            puts "     |p2|          |p4|          "
            puts "            |you|"+get_hakem_symbol.yellow
          when 2
            puts "            |p3|                 ".red
            puts "     |p2|"+get_hakem_symbol.yellow+"         |p4|"
            puts "            |you|"
          when 3
            puts "            |p3|".red+get_hakem_symbol.yellow
            puts "     |p2|          |p4|"
            puts "            |you|"
          when 4
            puts "            |p3|".red
            puts "     |p2|         |p4|"+get_hakem_symbol.yellow
            puts "            |you|"
        end

      when 4
        case hakem_number
          when 1
            puts "            |p3|                 "
            puts "     |P2|         "+"|p4|          ".red
            puts "            |you|"+get_hakem_symbol.yellow
          when 2
            puts "            |p3|                 "
            puts "     |P2|"+get_hakem_symbol.yellow+"         |p4|          ".red
            puts "            |you|                "
          when 3
            puts "            |p3|"+get_hakem_symbol.yellow
            puts "     |P2|         "+"|p4|          ".red
            puts "            |you|                "
          when 4
            puts "            |p3|                 "
            puts "     |P2|         "+"|p4|".red+get_hakem_symbol.yellow
            puts "            |you|                "
        end
    end
  end

  def show_hand(hand)
    puts "-------------------------------Your Hand-------------------------------"
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

  def show_five_cards(hand)
      puts "-----------------------------Your Hand(5)---------------------------"
    result="|"
    for index in 0..4
     card=hand[index]
      if (card.number<=10)
        result+= "#{card.number}#{get_symbol card.suit}|"
      elsif card.number==11
        result+= "J#{get_symbol card.suit}|"
      elsif card.number==12
        result+= "Q#{get_symbol card.suit}|"
      elsif (card.number==13)
        result+= "K#{get_symbol card.suit}|"
      end
    end
    puts result
    puts "---------------------------------------------------------------------"
  end

  def show_hokm suit
    puts get_hakem_symbol.yellow+" = "+get_symbol(suit)
  end

  def human_player_hokm
    puts "|0 = ".white+get_symbol(Suit::SPADE)+"|1 = ".white+get_symbol(Suit::CLUB)+"|2 = ".white+get_symbol(Suit::HEART)+
        "|3 = ".white+get_symbol(Suit::DIAMOND)
  end

  # @param int player_id
  # @param Card card
  # @return String
  def show_player_move(player_id,card)
    puts "Player#{player_id}".white+" played #{card.number}#{get_symbol card.suit}"
  end

  def show_scored_player(player)
    puts "Player#{player.id_number}".white+" scored!!"
  end


end
