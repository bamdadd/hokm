require "../lib/player"
class PlayerFactory
  @@player=1
  def self.get_instance
    player=Player.new
    player.id_number=@@player
    @@player+=1
    return player
  end

  private
  def initialize

  end
end