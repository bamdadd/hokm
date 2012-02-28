class Team
  attr_accessor:player1,:player2,:players,:id_number

  def initialize(p1,p2,id_number=1)
      @player1=p1
      @player2=p2
      @players = []
      @players.push(p1)
      @players.push(p2)
      @score=0
      @id_number=id_number
  end

  def getScore
    @score
  end
  def score(point=1)
      @score+=point
  end
  def winner?
    if @score>=7
      return true
      else return false
    end
  end
end