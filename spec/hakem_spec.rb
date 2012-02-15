require "rspec"
require "../lib/player"
require "../lib/suit"
require "../lib/hakem"
require "../lib/decorator"

describe Hakem do

  it "should decorate a player with Hakem" do
    hand=mock("Hand");
    aPlayer=Player.new
    aPlayer.hand=hand
    aPlayer.extend(Hakem)
    aPlayer.hokm(Suit::CLUB)
    hand.should_receive(:delete_at).with(1).and_return(true)
    aPlayer.play(1).should==true
  end

  it "should let hakem to Hokm" do
    aPlayer=Player.new
    aPlayer.extend(Hakem)
    aPlayer.hokm(Suit::CLUB)
    aPlayer.getHokm.should==Suit::CLUB
    aPlayer.hokm(Suit::DIAMOND)
    aPlayer.getHokm.should==Suit::DIAMOND
  end
end