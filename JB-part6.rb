class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
end

# Define the instance method Numeric#in

puts 5.yen

# 5.dollars.in(:euros)
# 10.euros.in(:rupees)



class String


end



module Enumerable


end
