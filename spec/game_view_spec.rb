require "rspec"
require "../lib/game_view"
require "../lib/hand"
require "../lib/deck"

describe GameView do
  before(:each) do
   @gv=GameView.new
  end
  it "should show table" do
    @gv.show_table 1,4
    @gv.show_table 2,4
    @gv.show_table 3,3
    @gv.show_table 4,4
  end

  it "should show a hand" do
    deck=Deck.new
    deck.shuffle!
    hand=Hand.new(deck.getQuarter(1))
    @gv.show_hand(hand.hand)
  end

  it "show 5 cards to hakem to hokm" do

  end

  it "should show current hokm" do

  end


end