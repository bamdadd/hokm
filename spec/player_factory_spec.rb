require "rspec"
require "../lib/player_factory"
describe PlayerFactory do

  it "should create players with id" do
    p1=PlayerFactory.new.get_player
    p1.id_number.should==1
    p2=PlayerFactory.new.get_player
    p2.id_number.should==2
    p3=PlayerFactory.new.get_player
    p3.id_number.should==3
  end
end