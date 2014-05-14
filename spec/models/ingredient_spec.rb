require 'spec_helper'

describe Ingredient do
  it { should have_many(:ingredient_recipes)}
  it { should have_many(:recipes).through(:ingredient_recipes)}

end
