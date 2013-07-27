class CartesianProduct
  include Enumerable

def initialize(a_sym, a_num)
  @a_sym = a_sym
  @a_num = a_num
end

def each
  if @a_sym == [] || @a_num == []
    return
    end
  @a_sym.each do |sym| @a_num.each {|num| yield [sym, num]}
  end
  end

end

c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }
# [:a, 4]
# [:a, 5]
# [:b, 4]
# [:b, 5]

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
# Nothing printed since Cartesian product of anything with an empty collection is empty


c = CartesianProduct.new([:a,:b,:c], [4,5])
c.each { |elt| puts elt.inspect }
