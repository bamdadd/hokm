require "../lib/player"
class Hakem < Player
  def initialize(aPlayer)
      @hakem=aPlayer
      @hokm=nil
  end
  def hokm(suit)
      @hokm=suit
  end

  def player
    @hakem
  end

  def getHokm
    @hokm
  end
end