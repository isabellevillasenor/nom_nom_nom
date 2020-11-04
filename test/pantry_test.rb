require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test
    def setup
        @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
        @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
        @pantry = Pantry.new
    end
    
    def test_it_exists_with_attributes
        assert_instance_of Pantry, @pantry
        assert_instance_of Hash, @pantry.stock
        assert_equal 0, @pantry.stock_check
    end

    def test_restock
        @pantry.restock(@ingredient1, 5)
        @pantry.restock(@ingredient1, 10)
        assert_equal 15, @pantry.stock_check(@ingredient1)

        @pantry.restock(@ingredient2, 7)
       
        assert_equal 7, @pantry.stock_check(@ingredient2)
    end
end