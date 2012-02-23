require 'colorize'
require "suit"

class GameView
  def initialize

  end

  def show_table(player_number)
    case player_number
      when 1
        puts "            |p3|                 "
        puts "     |P2|          |p4|          "
        puts "            |you|                ".red

      when 2
        puts "            |p3|                 "
        puts "     |P2|".red+"          |p4|   "
        puts "            |you|                "
      when 3
        puts "            |p3|                 ".red
    puts "     |P2|          |p4|          "
    puts "            |you|                "
      when 4
        puts "            |p3|                 "
    puts "     |P2|         "+"|p4|          ".red
    puts "            |you|                "
    end
  end

  def show_hand(hand)
    puts "-----------------------"
    hand
    hand.each{|card|
      if (card.number<=10)
        puts "#{card.number}#{get_symbol card.suit}"
      elsif card.number==11
        puts "J#{get_symbol card.suit}"
      elsif card.number==12
        puts "Q#{get_symbol card.suit}"
      elsif (card.number==13)
        puts "K#{get_symbol card.suit}"
      end

    }
    puts "-----------------------"
  end
  def get_symbol(suit)
    return "♣" if suit== Suit::CLUB
    return "♥".red if suit== Suit::HEART
    return "♦".red if suit== Suit::DIAMOND
    return "♠" if suit== Suit::SPADE

  end
end
