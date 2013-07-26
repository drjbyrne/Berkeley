class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end


def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  if (game[0][1] =~ /R|P|S/i) == nil || (game[1][1] =~ /R|P|S/i) == nil
    raise NoSuchStrategyError
  end
winner = game[0] if game[0][1] == game[1][1]

if game[0][1] == "R"
  if game[1][1] == "S"
    winner = game[0]
    else winner = game[1]
  end
end

if game[0][1] == "S"
  if game[1][1] == "P"
    winner = game[0]
    else winner = game[1]
  end
end

if game[0][1] == "P"
  if game[1][1] == "R"
    winner = game[0]
    else winner = game[1]
  end
end
return winner
end


def rps_tournament_winner(tournament)
      # Check if we're at a game
      if tournament[0][0].is_a? String
                return rps_game_winner(tournament)
            end
      # Otherwise keep going down the rabbit hole
      return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
end
