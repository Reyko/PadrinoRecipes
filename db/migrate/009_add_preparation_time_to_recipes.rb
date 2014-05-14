class AddPreparationTimeToRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.integer :preparation_time
    end
  end

  def self.down
    change_table :recipes do |t|
      t.remove :preparation_time
    end
  end
end
