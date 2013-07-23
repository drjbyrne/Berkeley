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
rounds = 0
  if tournament.length == 2 && tournament[1].length > 1
    rounds += 1
    if tournament[0].length == 2 && tournament[0][1].length > 1
      rounds += 1
      if tournament[0][0].length == 2 && tournament[0][0][1].length > 1
        rounds += 1
        if tournament[0][0][0].length == 2 && tournament[0][0][0][1].length > 1
          rounds += 1
          if tournament[0][0][0][0].length == 2 && tournament[0][0][0][0][1].length > 1
            rounds += 1
            if tournament[0][0][0][0][0].length == 2 && tournament[0][0][0][0][0][1].length > 1
              rounds += 1
              if tournament[0][0][0][0][0][0].length == 2 && tournament[0][0][0][0][0][0][1].length > 1
                rounds += 1
                puts "Warning!! This program will not handle more than 128 players!"
              end
            end
          end
        end
      end
    end
  end
puts "Rounds: ", rounds

results = Array.new

  if rounds == 7
#  results[0][0][0][0][0][0] = rps_game_winner(tournament[0][0][0][0][0][0][0],tournament[0][0][0][0][0][0][1])

  elsif rounds == 6
#  results[0][0][0][0][0]

    elsif rounds == 5
#  results[0][0][0][0]

      elsif rounds == 4
#  results[0][0][0]

        elsif rounds == 3
matches = 4

puts tournament[0][0][0]
puts tournament[0][0][1]

results[0][0][0] = rps_game_winner([tournament[0][0][0],tournament[0][0][1]])
puts results[0][0][0]

          elsif rounds == 2
matches = 2
    #  results[0]

            elsif rounds == 1
#  results = rps_game_winner( )

end



end





  # Winners of Second-round Matches
# winner0H = rps_game_winner([winner0,winner1])
# winner1H = rps_game_winner([winner2,winner3])

# Tourney winner
# return rps_game_winner([winner0H,winner1H])


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

puts rps_tournament_winner(tourney)
