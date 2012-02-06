require "rspec"
require "lib/state.rb"
require "lib/state_types.rb"

describe "Finite State Machine" do

  it "should create some states, define their names and their types" do
    state_types=StateTypes.new
    state1=State.new("state1",state_types.START)
    state2=State.new("state2",state_types.ACTIVE)
    state3=State.new("state3",state_types.END)
    state1.name.should=="state1"
    state1.state.should==state_types.START
    state2.name.should=="state2"
    state2.state.should==state_types.ACTIVE
    state3.name.should=="state3"
    state3.state.should==state_types.END
  end
end