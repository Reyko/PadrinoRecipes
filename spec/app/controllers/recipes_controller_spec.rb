#RSPEC TEST

require 'spec_helper'

describe "RecipesController" do

    describe "GET to :new" do
      before do
        # Setup code...
        get '/recipes/new'
      end

      # This is a test...
      it "give us a status code of 200" do
        # Expectations goes in here...
        expect(last_response.status).to eq(200)
        expect(last_response.ok?).to(be_true)
        last_response.status.should eq(200)
        last_response.ok?.should be_true
      end
    end

    describe "POST to :create do"
      before do
        params = {
          :recipe => {
              :title =>  Faker::Lorem.sentence,
              :description => Faker:Lorem.words(50).join(" "),
              :image_url => Faker::Internet.url,
              :instructions => Faker::Lorem.words(50).join(" "),
              :preparation_time => rand(180),
              :cooking_time => rand(90),
              :serves => rand(10)
          }
        }

        post '/recipes/create', my_amazing_params
      end

    end

    it "should create the Recipe, IngredientRecipe and Ingredient in one hit" do
      expect(Recipe.count).to eq(1)
    end
    it "should redirect us to the homepage" do
      expect(last_response.redirect?).to be_true
    end

  end

end
