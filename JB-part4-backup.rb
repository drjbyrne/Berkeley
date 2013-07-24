class Dessert

attr_accessor :name
attr_accessor :calories

def initialize(name, calories)
  @name = name
  @calories = calories
end

def healthy?
  if @calories < 200
    return true
    else false
    end
end

def delicious?
    if self.is_a?(Dessert)
      return true
      end
end

end

t = Dessert.new("Toffee",190)
puts t.name
puts t.calories
puts t.healthy?
puts t.delicious?


class JellyBean < Dessert

# attr_accessor :name
# attr_accessor :calories
attr_accessor :flavor

  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end


  def delicious?
    if @flavor == "black licorice"
      return false
      else
      return true
      end
  end
end

j = JellyBean.new("Amazer", 200, "black licorice")
puts j.name
puts j.calories
puts j.healthy?
puts j.flavor
puts j.delicious?
