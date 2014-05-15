class AddChefIdToRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.integer :chef_id
    end
  end

  def self.down
    change_table :recipes do |t|
      t.remove :chef_id
    end
  end
end
