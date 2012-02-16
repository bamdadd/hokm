class GameMove
  attr_accessor :player,:cardNumber,:cardValue
  def initialize(player,cardNumber,cardValue)
    @player=player
    @cardNumber=cardNumber
    @cardValue=cardValue
  end
end