require "../lib/game_model"
require "../lib/game_view"
class GameController
  system("clear")
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
  #view.show_hokm model.hakem.getHokm

  current_player=hakem
  4.times{
  view.show_hokm model.hakem.getHokm
  view.show_table(current_player.id_number,hakem.id_number)
  view.show_hand current_player.hand.hand if (current_player.id_number==1)
  card_number=current_player.strategy.get_next_move
  card=current_player.hand.hand[card_number]
  view.show_player_move current_player.id_number,card
  model.game.play(current_player,card_number)
  view.show_hand current_player.hand.hand if (current_player.id_number==1)
  current_player=model.game.table.nextPlayer current_player
  }
  scored_player=model.game.findScoredPlayer
  view.show_scored_player scored_player
#hakem bazi kone
#bazi pish bere
#score begiran
#winnero neshoon bede

end