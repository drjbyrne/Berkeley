class Dessert

def initialize(name, calories)
    def name=(name)
      @name = name
      end

    def last_name
      @name
      end

    def calories=(calories)
      @calories = calories
      end

    def last_calories
      @calories
      end
end

def healthy?
    if @calories < 200
      return true
      end
end

def delicious?
    if self.is_a?(Dessert)
         return true
         end
end

end


class JellyBean < Dessert
  def initialize(name, calories, flavor)

    extend Dessert

    def flavor=(flavor)
            @flavor = flavor
            end

        def last_flavor
                @flavor
                end
  end

  def delicious?
    if @flavor == "black licorice"
      return false
      else
      return true
      end
  end
end
