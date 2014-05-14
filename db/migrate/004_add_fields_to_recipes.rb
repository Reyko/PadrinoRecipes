class AddFieldsToRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
    t.string :title
    t.text :description
    t.string :image_url
    t.text preparationtime:instructions
    t.integer :cooking_time
    t.integer :servers
    end
  end

  def self.down
    change_table :recipes do |t|
    t.remove :title
    t.remove :description
    t.remove :image_url
    t.remove :instructions
    t.remove :cooking_time
    t.remove :servers
    end
  end
end
