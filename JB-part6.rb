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
        @tgs = self
        @tgs == @tgs.reverse
      end
end
