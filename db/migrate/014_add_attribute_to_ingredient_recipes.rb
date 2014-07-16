class AddAttributeToIngredientRecipes < ActiveRecord::Migration
  def self.up
    change_table :ingredient_recipes do |t|
      t.string :name
    end
  end

  def self.down
    change_table :ingredient_recipes do |t|
      t.remove :name
    end
  end
end


