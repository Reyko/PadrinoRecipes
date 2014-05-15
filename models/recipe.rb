class Recipe < ActiveRecord::Base
  belongs_to :chef
  has_many :categorisations
  has_many :categories, :through => :categorisations
  has_many :ingredient_recipes
  has_many :ingredients, :through => :ingredient_recipes

  accepts_nested_attributes_for :ingredient_recipes
end
