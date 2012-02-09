require "rspec"
require "../lib/player"
require "../lib/deck"
require "../lib/hand"

describe Player do
  before(:each) do
    deck=Deck.new
    deck.shuffle!
    @hand=deck.getQuarter(rand(4))
  end

  it "should choose and play a card from a his hand" do
      subject=Player.new
      subject.hand=@hand
      subject.hand.count.should==13
      card_selected=subject.play(2)      # card #2 in his/her hand
      subject.hand.count.should==12
   end
end