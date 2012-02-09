require "rspec"
require "../lib/suit"
require "../lib/deck"
require "../lib/hand"

describe Hand do
  before(:each)do
    @deck=Deck.new
    @deck.shuffle!
  end
  it "should create a hand" do
     hand=Hand.new(@deck.getQuarter(1))
     hand.count.should==13
  end
end