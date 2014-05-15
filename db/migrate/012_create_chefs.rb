class CreateChefs < ActiveRecord::Migration
  def self.up
    create_table :chefs do |t|
      t.string :first_name
      t.string :last_name
      t.string :image_url
      t.text :biography
      t.timestamps
    end
  end

  def self.down
    drop_table :chefs
  end
end
