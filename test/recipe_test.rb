require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'

class RecipeTest < Minitest::Test
    def setup
        @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
        @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
        @recipe1 = Recipe.new("Mac and Cheese")
    end

    def test_it_exists_with_attributes
        assert_equal "Mac and Cheese", @recipe1.name 
        assert_instance_of Hash, @recipe1.ingredients_required
    end

    def test_add_ingredient
        @recipe1.add_ingredient(@ingredient1, 2)

        assert_equal 2, @recipe1.ingredients_required
    end

    def test_ingredients
     @recipe1.add_ingredient(@ingredient1, 2)
     assert_equal Ingredient, @recipe1.ingredients
    end
end