PadrinoRecipies::App.controllers :recipes do
  
  get :index do
    @recipes = Recipe.all
    render :'recipes/index'
  end

  get :index, :parent => :chef do

    @recipes = Chef.find(params[:chef_id]).recipes
    render :'recipes/index'
  end

  get :new do
    @recipe = Recipe.new
    @recipe.ingredient_recipes.build(:ingredient => Ingredient.new) 
    render :'recipes/new'
  end

  get :by_category, :with => :category_id do
    @category = Category.find(params[:category_id])
    @recipes = @category.recipes
    render :'recipes/by_category'
  end
  
  post :create, :map => "/recipes" do
    @recipe = Recipe.new(params[:recipe])
    @recipe.save!
    flash[:notice]
    redirect 'recipes/new'
  end

end
