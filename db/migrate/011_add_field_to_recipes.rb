class AddFieldToRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.integer :serves
    end
  end

  def self.down
    change_table :recipes do |t|
      t.remove :serves
    end
  end
end
