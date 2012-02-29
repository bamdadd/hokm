require "../lib/player"
# Player Factory
# This class creates Players with assigning Player.id_number
# increamentaly to them.

class PlayerFactory
  @@player=1
  @p

  def initialize
    @p=Player.new
    @p.id_number=@@player
    @@player+=1

  end

  def get_player
    return @p
  end
end