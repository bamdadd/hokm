require "rspec"
require "../lib/suit"
require "../lib/card"

describe Card do

  it "should check if card number is between 1 and 13" do
    expect{Card.new(Suit::CLUB,14)}.to raise_error(RuntimeError,"CardNumberNotValid")
  end
   it "should check if card suit is valid" do
    expect{Card.new(50,10)}.to raise_error(RuntimeError,"SuitNotValid")
  end
end