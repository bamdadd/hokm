require "rspec"
require "../lib/hokm_game"
require "../lib/hakem"
require "../lib/suit"
require "../lib/table"

describe HokmGame do


  it "should describe a hokm game" do
    game=HokmGame.new
    p1=Player.new
    p2=Player.new
    p3=Player.new
    p4=Player.new
    team1=Team.new(p1,p3)
    team2=Team.new(p2,p4)
    hokmTable=Table.new(team1,p1,p3,team2,p2,p4)
    hakem=game.chooseHakem
    hakem.extend Hakem
    hakem.hokm(Suit::CLUB)
    currentPlayer=hakem
    while (team1.winner?.eql?false or team2.winner?.eql?false)
      currentPlayer.play(1)
      3.times{
        currentPlayer=hokmTable.nextPlayer currentPlayer
        currentPlayer.play(1)
      }
      scoredPlayer=game.findScoredPlayer
      scoredTeam=hokmTable.findTeamByPlayer scoredPlayer
      scoredTeam.score
      currentPlayer=scoredPlayer
    end

  end
end