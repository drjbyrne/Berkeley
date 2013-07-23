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


  # Winners of Second-round Matches
# winner0H = rps_game_winner([winner0,winner1])
# winner1H = rps_game_winner([winner2,winner3])

# Tourney winner
# return rps_game_winner([winner0H,winner1H])
end


match = [["Armando", "P"], ["Dave", "S"]]
rps_game_winner(match)

tourney = [
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "r"],  ["Michael", "z"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]

puts tourney.size


# puts rps_tournament_winner(tourney)
