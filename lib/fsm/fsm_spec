require "rspec"
require "lib/fsm/state"
require "lib/fsm/state_types"
require "lib/fsm/state_context"

describe "Finite State Machine" do

  it "should create some states, define their names and their types" do
    state_types=StateTypes2.new
    state1=State2.new("state1",state_types.START)
    state2=State2.new("state2",state_types.ACTIVE)
    state3=State2.new("state3",state_types.END)
    state1.name.should=="state1"
    state1.state.should==state_types.START
    state2.name.should=="state2"
    state2.state.should==state_types.ACTIVE
    state3.name.should=="state3"
    state3.state.should==state_types.END
  end

  it "should create some states, define their names and their types" do
    state_types=StateTypes2.new
    state1=State2.new("state1",state_types.START)
    state2=State2.new("state2",state_types.ACTIVE)
    state3=State2.new("state3",state_types.END)
    state1.name.should=="state1"
    state1.state.should==state_types.START
    state2.name.should=="state2"
    state2.state.should==state_types.ACTIVE
    state3.name.should=="state3"
    state3.state.should==state_types.END
  end

  it "should create a map of states and store them" do
    stmap=StateContext.new

    state_types=StateTypes2.new
    state1=State2.new("state1",state_types.START)
    stmap.add(state1)
    stmap.include?(state1).should==true

    state2=State2.new("state2",state_types.ACTIVE)
    stmap.add(state2)
    stmap.include?(state2).should==true

    state3=State2.new("state3",state_types.END)
    stmap.add(state3)
    stmap.include?(state3).should==true


  end
  it "should create an arbitary object and add and state to it" do
        anObject=2
        anObjectState=State2.new(anObject)
        anObjectState.state= StartState
        anObjectState.state= EndState


  end


end