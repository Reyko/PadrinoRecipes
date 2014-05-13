require 'spec_helper'

describe Category do

  it { should have_many(:categorisations) }
  it { should have_many(:recipes).through(:categorisations)}

  describe "sub categories" do
    before do
      @vege = DietaryRequirement.create(:name => 'Vegeterian')
      @french = Cuisine.create(:name => 'French')
    end

    it "should be able to accessed by the Category model" do
      # assert_equals 2, Category.count
      expect(Category.count).to be (2)
      expect(Cuisine.first).to eq(@french)
      expect(DietaryRequirement.first).to eq(@vege)
    end
  end

end
