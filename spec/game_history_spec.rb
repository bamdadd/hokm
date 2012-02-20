require "rspec"
require "../lib/game_move"
require "../lib/game_history"
require "../lib/player"
require "../lib/suit"
require "../lib/card"
describe GameHistory do

  it "should check insertion and fetching of a movements into Game History" do
    gh=GameHistory.new
    p1=Player.new
    p2=Player.new
    p3=Player.new
    p4=Player.new
    move1=GameMove.new(p1,1,Card.new(Suit::CLUB,1))
    gh.push move1
    move2=GameMove.new(p2,1,Card.new(Suit::CLUB,2))
    gh.push move2
    move3=GameMove.new(p3,1,Card.new(Suit::CLUB,3))
    gh.push move3
    move4=GameMove.new(p4,1,Card.new(Suit::CLUB,4))
    gh.push move4
    history_num=gh.count
    h1=gh[history_num-1]
    h1.should==move4
    h1.player.should==p4
    h2=gh[history_num-2]
    h2.should==move3
    h2.player.should==p3
    h3=gh[history_num-3]
    h3.should==move2
    h3.player.should==p2
    h4=gh[history_num-4]
    h4.should==move1
    h4.player.should==p1


  end
end