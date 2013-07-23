class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end


def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless ((game[0][1] =~ /R|P|S/i) && (game[1][1] =~ /R|P|S/i))
    puts s
# Winners of Second-round Matches
winner0H = rps_game_winner([winner0,winner1])
winner1H = rps_game_winner([winner2,winner3])
# Tourney winner
return rps_game_winner([winner0H,winner1H])
end


match = [["Armando", "P"], ["Dave", "S"]]
puts rps_game_winner(match)

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
puts rps_tournament_winner(tourney)


