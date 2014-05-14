class CreateIngredientRecipes < ActiveRecord::Migration
  def self.up
    create_table :ingredient_recipes do |t|
      t.integer :ingredient_id
      t.integer :recipe_id
      t.timestamps
    end
  end

  def self.down
    drop_table :ingredient_recipes
  end
end
