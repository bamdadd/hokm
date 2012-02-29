require "../lib/game_model"
require "../lib/game_view"
# Game Controller - "C" Part of MVC pattern
# This class is responsible to connect Model to View
# and factor out any hardcoding of other layers in Model or View
class GameController
  def self.init
    system("clear")
    model=GameModel.new
    view=GameView.new
    model.distribute_hands
    model.initialize_players
    return model, view
  end

  model, view = init()

  hakem=model.get_hakem
  if hakem.id_number==1
    puts "You are hakem".red
    view.show_five_cards(hakem.hand.hand)
    view.human_player_hokm
  end
  model.hokm hakem.strategy.choose_hokm

  current_player=hakem
  while (model.team1.winner?.eql?false and model.team2.winner?.eql?false)

    4.times{
      view.show_teams_score model.team1, model.team2
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
    scored_team=model.game.table.findTeamByPlayer(scored_player)
    view.show_scored_team scored_team
    scored_team.score
    current_player=scored_player
  end
  view.show_winner_team(model.team1,model.team2)

end