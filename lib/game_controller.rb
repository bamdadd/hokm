require "../lib/game_model"
require "../lib/game_view"
class GameController
  model=GameModel.new
  view=GameView.new
  model.distribute_hands
  model.initialize_players
  hakem=model.get_hakem
  #pp hakem
  if hakem.id_number==1
    puts "You are hakem".red
    view.show_five_cards(hakem.hand.hand)
    view.human_player_hokm
  end
  model.hokm hakem.strategy.choose_hokm
  pp model.hakem.getHokm
#hakem bazi kone
#bazi pish bere
#score begiran
#winnero neshoon bede

end