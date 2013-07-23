
def palindrome?(str)
#  testgs = str.downcase.gsub(/[^A-Za-z0-9_]/,'')
  testgs = str.downcase.gsub(/\W/,'')
  testgs == testgs.reverse
end

def count_words(str)
  wc = Hash.new{0}
  str.downcase.scan(/\b\w+/) do |k| wc[k] += 1 end
return wc
end


