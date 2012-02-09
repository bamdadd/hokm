require "rspec"
require "../lib/deck"

describe Deck do

   before(:each) do
    @subject=Deck.new
    @subject.shuffle!
  end

  it "should check quarter counts" do
    @subject.getQuarter(1).count.should==13
    pp  @subject.getQuarter(1)
    @subject.getQuarter(2).count.should==13
    @subject.getQuarter(2)
    @subject.getQuarter(3).count.should==13
@subject.getQuarter(3)
    @subject.getQuarter(4).count.should==13
    @subject.getQuarter(4)
  end

  it "should raise and exception with wrong quarter parameter" do
    expect{@subject.getQuarter(5)}.to raise_error(RuntimeError,"NotValidQuarterValue")
  end
end