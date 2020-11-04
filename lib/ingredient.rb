class Ingredient
    attr_reader :name,
                :unit,
                :calories

    def initialize(params = {})
        @name = params.fetch(:name)
        @unit = params.fetch(:unit)
        @calories = params.fetch(:calories)
    end
end