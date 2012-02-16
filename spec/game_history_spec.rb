require "rspec"
require "../lib/game_move"
require "../lib/game_history"
require "../lib/player"
require "../lib/suit"
require "../lib/card"
describe GameHistory do

  it "should check insertion and fetching of a movements into Game History" do
    gh=GameHistory.new
    move1=GameMove.new(Player.new,1,Card.new(Suit::CLUB,1))
    gh<<move1
    move2=GameMove.new(Player.new,1,Card.new(Suit::CLUB,2))
    gh<<move2
    move3=GameMove.new(Player.new,1,Card.new(Suit::CLUB,3))
    gh<<move3
    move4=GameMove.new(Player.new,1,Card.new(Suit::CLUB,4))
    gh<<move4
    gh.fetch(-1).should==move4
    gh.fetch(-2).should==move3
    gh.fetch(-3).should==move2
    gh.fetch(-4).should==move1
  end
end