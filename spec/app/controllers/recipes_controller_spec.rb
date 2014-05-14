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
    post '/recipes/create', { :recipe => { :title => "Chocolate Cake"}}
  end

  it "should save the recipe and redirect me" do
    expect(Recipe.count).to eq(1)
    expect(last_response).redirect?).to be be_true
    follow_redirect!
    expect(last_request.url).to be("/")
  end
end

require 'spec_helper'

describe "RecipesController" do
  before do
    get "/"
  end

  it "returns hello world" do
    last_response.body.should == "Hello World"
  end
end
