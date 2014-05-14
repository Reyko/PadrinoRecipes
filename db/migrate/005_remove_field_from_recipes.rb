class RemoveFieldFromRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.remove :preparationtime
    end
  end

  def self.down
    change_table :recipes do |t|
      t.clear :preparationtime
    end
  end
end
