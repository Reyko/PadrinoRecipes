class AddQuantityToIngredientRecipes < ActiveRecord::Migration
  def self.up
    change_table :ingredient_recipes do |t|
      t.string :qty
    end
  end

  def self.down
    change_table :ingredient_recipes do |t|
      t.remove :qty
    end
  end
end
