class Recipe
    attr_reader :name,
                :ingredients_required
    def initialize(name)
        @name = name
        @ingredients_required = Hash.new
    end

    def add_ingredient(ingredient = Ingredient.new, amount)
        @ingredients_required[:ingredient] = amount
    end
end