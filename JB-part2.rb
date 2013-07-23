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
                if tournament[0][0][0][0][0][0][0].length == 2 && tournament[0][0][0][0][0][0][0][1].length > 1
                  rounds += 1
                  puts "Warning!! This program handles a maximum of 256 players!"
                end
              end
            end
          end
        end
      end
    end
  end

  # puts "Rounds: ", rounds

results = Array.new
#if rounds == 8

  if rounds == 7
#  results[0][0][0][0][0][0] = rps_game_winner(tournament[0][0][0][0][0][0][0],tournament[0][0][0][0][0][0][1])

  elsif rounds == 6
#  results[0][0][0][0][0]

    elsif rounds == 5
#  results[0][0][0][0]

      elsif rounds == 4
#  results[0][0][0]

        elsif rounds == 3
match0 = Array.new
match1 = Array.new
match2 = Array.new
match3 = Array.new
match0[0] = tournament[0][0][0]
match0[1] = tournament[0][0][1]
match1[0] = tournament[0][1][0]
match1[1] = tournament[0][1][1]
match2[0] = tournament[1][0][0]
match2[1] = tournament[1][0][1]
match3[0] = tournament[1][1][0]
match3[1] = tournament[1][1][1]

puts "M0", match0
puts "M1", match1
puts "M2", match2
puts "M3", match3
puts "Winners of 4 matches: "
results = Array.new
winner0 = rps_game_winner(match0)
puts winner0
results = [][]
results[0][0] = winner0
puts rps_game_winner(match1)
puts rps_game_winner(match2)
puts rps_game_winner(match3)

# results[0][0]

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
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]



tourney16 =
  [
       [
                [
                             [ ["Armando", "P"], ["Dave", "S"] ],
                             [ ["Richard", "R"],  ["Michael", "S"] ],
                         ],
                [
                             [ ["Allen", "S"], ["Omer", "P"] ],
                             [ ["David E.", "R"], ["Richard X.", "P"] ]
                         ]
            ],
       [
                [
                             [ ["Sally", "R"], ["Sara", "P"] ],
                             [ ["Denise", "S"],  ["Krista", "P"] ],
                         ],
                [
                             [ ["Karen", "P"], ["Yasmin", "S"] ],
                             [ ["Eve", "P"], ["Beth", "R"] ]
                         ]
            ]
   ]

tourney256 =
[[[[[[[[["Axenus", "R"], ["Juste", "R"]], [["Oran", "R"], ["Cris", "S"]]], [[["Juan", "S"], ["Vincens", "P"]], [["Max", "S"], ["Mervin", "S"]]]], [[[["Ardell", "P"], ["Leo", "S"]], [["Ailesh", "S"], ["Anselmo", "P"]]], [[["Isadore", "R"], ["Debra", "S"]], [["Kyler", "P"], ["Anil", "P"]]]]], [[[[["William", "R"], ["Vencenzo", "P"]], [["Obie", "R"], ["Amado", "P"]]], [[["Rock", "S"], ["Dhaval", "S"]], [["Clay", "S"], ["Sherwood", "P"]]]], [[[["Audie", "R"], ["Debra", "R"]], [["Al", "S"], ["Lowell", "R"]]], [[["Abban", "S"], ["Cristiano", "R"]], [["Fermin", "P"], ["Steve", "P"]]]]]], [[[[[["Everette", "P"], ["Anand", "S"]], [["Chasiel", "S"], ["Gratian", "P"]]], [[["Ellis", "P"], ["Quentin", "R"]], [["Juston", "S"], ["Elza", "S"]]]], [[[["Elmo", "P"], ["Jamel", "R"]], [["Ryne", "P"], ["Arkhip", "S"]]], [[["Vernie", "P"], ["Jordon", "S"]], [["Gustav", "R"], ["Sidney", "R"]]]]], [[[[["Arjun", "P"], ["Esteban", "P"]], [["Brenton", "P"], ["Jaidev", "S"]]], [[["Houston", "P"], ["Devdas", "R"]], [["Dexter", "P"], ["Bala", "P"]]]], [[[["Darien", "S"], ["Vernados", "R"]], [["Trever", "P"], ["Mel", "S"]]], [[["Amato", "S"], ["Chandler", "R"]], [["Tod", "R"], ["Donald", "R"]]]]]]], [[[[[[["Sixto", "R"], ["Conall", "P"]], [["Andrea", "S"], ["Rusty", "P"]]], [[["Akemi", "S"], ["Serenus", "P"]], [["Gearld", "R"], ["Chadd", "S"]]]], [[[["Hagan", "R"], ["Kermit", "S"]], [["Uinseann", "S"], ["Hunter", "R"]]], [[["Leonel", "S"], ["Resheph", "S"]], [["Reyes", "R"], ["Maury", "P"]]]]], [[[[["Garett", "S"], ["Owen", "S"]], [["Kadeem", "R"], ["Graziano", "R"]]], [[["Lochan", "R"], ["Marinos", "P"]], [["Cory", "S"], ["Cianan", "R"]]]], [[[["Kavindra", "P"], ["Shane", "P"]], [["Kyle", "R"], ["Moises", "S"]]], [[["Marinos", "S"], ["Clovis", "P"]], [["Anluan", "S"], ["Cezar", "P"]]]]]], [[[[[["Jarvis", "S"], ["Dhaval", "R"]], [["Rickey", "R"], ["Christin", "P"]]], [[["Benigno", "P"], ["Gustavo", "R"]], [["Allyn", "P"], ["Ailesh", "S"]]]], [[[["Ossian", "P"], ["Arcadio", "S"]], [["Avram", "P"], ["Conan", "S"]]], [[["Jevon", "R"], ["Ermanno", "R"]], [["Felice", "P"], ["Margarit", "S"]]]]], [[[[["Baruch", "R"], ["Dewey", "P"]], [["Loyd", "R"], ["Dax", "P"]]], [[["Tad", "P"], ["Edison", "S"]], [["Deon", "S"], ["Asher", "R"]]]], [[[["Eochaidh", "S"], ["Solomon", "S"]], [["Abdullah", "S"], ["Ivory", "P"]]], [[["Eachann", "R"], ["Devon", "P"]], [["Reno", "R"], ["Marie", "R"]]]]]]]], [[[[[[[["Abdul", "S"], ["Pedro", "P"]], [["Tyrone", "P"], ["Peli", "R"]]], [[["Forrest", "P"], ["Prentice", "P"]], [["Ronan", "P"], ["Lukas", "S"]]]], [[[["Bryon", "S"], ["Codie", "S"]], [["Ciarrai", "P"], ["Thrasius", "R"]]], [[["Aldo", "R"], ["Tylor", "P"]], [["Kendrick", "R"], ["Derry", "P"]]]]], [[[[["Branduff", "S"], ["Tavor", "S"]], [["Lonnie", "P"], ["Doyle", "S"]]], [[["Kumakichi", "P"], ["Jesus", "P"]], [["Nikolas", "S"], ["Isha", "R"]]]], [[[["Darion", "P"], ["Patrick", "P"]], [["Emory", "S"], ["Wylie", "R"]]], [[["Broderic", "S"], ["Allyn", "P"]], [["Isidoros", "R"], ["Rama", "R"]]]]]], [[[[[["Enrique", "P"], ["Euston", "P"]], [["Attis", "P"], ["Spiridon", "S"]]], [[["Avaro", "S"], ["Arthur", "R"]], [["Micah", "R"], ["Eusebio", "R"]]]], [[[["Abel", "P"], ["Innokenti", "S"]], [["Gustaf", "P"], ["Sonny", "S"]]], [[["Demetri", "S"], ["Achilles", "P"]], [["Agust", "S"], ["Antwon", "R"]]]]], [[[[["Enoch", "S"], ["Tyrel", "R"]], [["Sixto", "S"], ["Beolagh", "S"]]], [[["Kristoph", "P"], ["Kavindra", "S"]], [["Julius", "P"], ["Andrea", "P"]]]], [[[["Leif", "R"], ["Tyron", "P"]], [["Ardal", "S"], ["Furman", "P"]]], [[["Rogelio", "P"], ["Zakary", "R"]], [["Prokhop", "R"], ["Aries", "R"]]]]]]], [[[[[[["Homer", "R"], ["Laurence", "P"]], [["Carmelo", "P"], ["Merlin", "S"]]], [[["Prokhop", "S"], ["Amado", "S"]], [["Caesar", "R"], ["Davin", "S"]]]], [[[["Marion", "R"], ["King", "R"]], [["Colombain", "S"], ["Kurt", "P"]]], [[["Naresh", "P"], ["Fehin", "P"]], [["Garland", "P"], ["Rico", "R"]]]]], [[[[["Coby", "R"], ["Harley", "P"]], [["Asher", "S"], ["Mikhail", "P"]]], [[["Elmore", "R"], ["Bruno", "R"]], [["Fabrice", "P"], ["Maximus", "P"]]]], [[[["Venedictos", "R"], ["Crawford", "S"]], [["Domingo", "P"], ["Galen", "S"]]], [[["Ryan", "P"], ["Anlon", "R"]], [["Brandon", "R"], ["Jed", "S"]]]]]], [[[[[["Walter", "S"], ["Amato", "P"]], [["Aineias", "S"], ["Kamil", "S"]]], [[["Aharon", "S"], ["Jaylen", "R"]], [["Payton", "P"], ["Lynn", "P"]]]], [[[["Avanindra", "S"], ["Krishna", "R"]], [["Trevor", "S"], ["Adhideva", "R"]]], [[["Leongard", "P"], ["Dwane", "R"]], [["Dale", "R"], ["Hakeem", "S"]]]]], [[[[["Arnd", "R"], ["Balendin", "S"]], [["Abdiel", "P"], ["Houston", "P"]]], [[["Vlad", "R"], ["Anastasios", "R"]], [["Mason", "R"], ["Shawn", "R"]]]], [[[["Denzel", "R"], ["Rigobert", "R"]], [["Wayne", "R"], ["Demario", "S"]]], [[["Colon", "P"], ["Clyde", "S"]], [["Faron", "S"], ["Gaston", "S"]]]]]]]]]

puts rps_tournament_winner(tourney256)
