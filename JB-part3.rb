def combine_anagrams(words)
  words.group_by{|s|s.upcase.chars.sort}.values
end

input = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']

p combine_anagrams(input)
