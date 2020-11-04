require './lib/ingredient'

class Pantry < Ingredient
    attr_reader :stock
    def initialize
        @stock = Hash.new
    end

    def stock_check(name = [:name])
        # if @stock.values == nil || []
        #     0
        # else
            @stock.values
        # end
    end

    def restock(name, amount)
        @stock[:name] = amount
    end
end