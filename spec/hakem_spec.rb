require "rspec"
require "../lib/player"
require "../lib/suit"
require "../lib/hakem"

describe Hakem do

  it "should define hakem" do
    aPlayer=Player.new
    hakem=Hakem.new(aPlayer)
    hakem.player.nil?.should==false
  end

  it "should let hakem to Hokm" do
    aPlayer=Player.new
    hakem=Hakem.new(aPlayer)
    hakem.hokm(Suit::CLUB)
    hakem.getHokm.should==Suit::CLUB
    hakem.hokm(Suit::DIAMOND)
    hakem.getHokm.should==Suit::DIAMOND
  end
end