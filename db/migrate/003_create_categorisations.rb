class CreateCategorisations < ActiveRecord::Migration
  def self.up
    create_table :categorisations do |t|
      t.integer :category_id
      t.integer :recipe_id
      t.timestamps
    end
  end

  def self.down
    drop_table :categorisations
  end
end
