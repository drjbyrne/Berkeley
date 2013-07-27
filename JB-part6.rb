class Numeric
  @@currencies = {'dollar' => 1.000, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  def in(curr)
    singular_currency = curr.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
            self / @@currencies[singular_currency]
          else
            super
          end
    end
end

class String
  def palindrome?
    @testgs = self.downcase.gsub(/\W/,'')
    @testgs == @testgs.reverse
  end
end

module Enumerable
  def palindrome?
  if self.is_a?(Hash)
    puts "It's a Hash"
    return
    else
      @tgs = self
      @tgs == @tgs.reverse
    end
    end
end


puts "Madam I'm Adam".palindrome?
puts [1,2,3,2,1].palindrome?
puts [1,3,2,4,1].palindrome?
{"x" => 3, "y" => 2}.palindrome?
puts [[1,2],[2],[1,2,3],[2],[1,2]].palindrome?
