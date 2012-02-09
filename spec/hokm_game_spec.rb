require "rspec"
require "../lib/hokm_game"
require "pp"

describe HokmGame do

  #it "shoud initGame" do
  #  game=HokmGame.new
  #  player1=mock("Player")
  #  player2=mock("Player")
  #  player3=mock("Player")
  #  player4=mock("Player")
  #  players=[player1,player2,player3,player4]
  #  game.player1=player1
  #  game.player2=player2
  #  game.player3=player3
  #  game.player4=player4
  #  cards=mock("DeckOfCards")
  #  player1.should_receive(:cards).and_return([1,2,3,4,5,6,7,8,9,10,11,12,13])
  #  player2.should_receive(:cards).and_return([1,2,3,4,5,6,7,8,9,10,11,12,13])
  #  player3.should_receive(:cards).and_return([1,2,3,4,5,6,7,8,9,10,11,12,13])
  #  player4.should_receive(:cards).and_return([1,2,3,4,5,6,7,8,9,10,11,12,13])
  #  game.cards=cards
  #  hakem=game.chooseHakem
  #  players.should include(hakem)
  #  cards.should_receive(:shuffle).and_return(true)
  #  game.should_receive(:dealFirstRoundOfCards).and_return(true)
  #  game.should_receive(:dealSecondRoundOfCards).and_return(true)
  #  game.should_receive(:dealThirdRoundOFCards).and_return(true)
  #  game.cards.shuffle
  #  game.dealFirstRoundOfCards
  #  hakem.should_receive(:chooseHokm).and_return("Clubs")
  #  hokm=hakem.chooseHokm
  #  game.dealSecondRoundOfCards
  #  game.dealThirdRoundOFCards
  #  player1.cards.count.should==13
  #  player2.cards.count.should==13
  #  player3.cards.count.should==13
  #  player4.cards.count.should==13
  #end

  it "should start a game" do
    game=HokmGame.new

  end
end