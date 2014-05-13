class Categorisation < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :category
  has_many :recipes, :through => :categorisations
end
