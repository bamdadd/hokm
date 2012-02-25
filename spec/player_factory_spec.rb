require "rspec"
require "../lib/player_factory"
describe PlayerFactory do

  it "should create players with id" do
    p1=PlayerFactory.get_instance
    p1.id_number.should==1
    p2=PlayerFactory.get_instance
    p2.id_number.should==2
    p3=PlayerFactory.get_instance
    p3.id_number.should==3
  end
end