require "rspec"
require "../lib/game_view"
require "../lib/hand"
require "../lib/hokm_game"
require "../lib/deck"

describe GameView do
  before(:each) do
   @gv=GameView.new
  end
  it "should show table" do
    @gv.show_table 3,1
    @gv.show_table 3,2
    @gv.show_table 3,3
    @gv.show_table 3,4
  end

  it "should show a hand" do
    deck=Deck.new
    deck.shuffle!
    hand=Hand.new(deck.getQuarter(1))
    @gv.show_hand(hand.hand)
  end

  it "show 5 cards to hakem to hokm" do
     deck=Deck.new
    deck.shuffle!
    hand=Hand.new(deck.getQuarter(1))
    @gv.show_five_cards(hand.hand)
  end

  it "should show current hokm" do

    @gv.show_hokm(Suit::CLUB)
    @gv.show_hokm(Suit::DIAMOND)
    @gv.show_hokm(Suit::HEART)
    @gv.show_hokm(Suit::SPADE)


  end

  it "should show hokms" do
    @gv.hokm
  end


end