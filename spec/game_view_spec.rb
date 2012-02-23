require "rspec"
require "../lib/game_view"
require "../lib/hand"
require "../lib/deck"

describe GameView do
  before(:each) do
   @gv=GameView.new
  end
  it "should show table" do
    @gv.show_table 1
    @gv.show_table 2
    @gv.show_table 3
    @gv.show_table 4
  end

  it "should show a hand" do
    deck=Deck.new
    deck.shuffle!
    hand=Hand.new(deck.getQuarter(1))
    @gv.show_hand(hand.hand)

  end
end