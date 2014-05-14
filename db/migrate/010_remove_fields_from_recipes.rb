class RemoveFieldsFromRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.remove :servers
    end
  end

  def self.down
    change_table :recipes do |t|
      t.integer :servers
    end
  end
end
