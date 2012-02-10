class Team
  attr_accessor:player1,:player2

  def initialize(p1,p2)
      @player1=p1
      @player2=p2
      @score=0
  end
  def getScore
    @score
  end
  def score(point=1)
      @score+=point
  end
  def winner?
    if @score==7
      return true
      else return false
    end
  end
end