class Recipe < ActiveRecord::Base
  has_many :categorisations
  has_many :categories, :through => :categorisations
  has_many :ingredient_recipes
  has_many :ingredients, :through => :ingredient_recipes
end
