PadrinoRecipies::App.controllers :recipes do
  
  get :index do
    @recipes = Recipe.all
    @title = "Recipes"
    render :'recipes/index'
  end

  get :index, :parent => :chef do
    @recipes = Chef.find(params[:chef_id]).recipes
    render :'recipes/index'
  end

  get :new do

    @recipe = Recipe.new
    @chefs = Chef.all
    @chef = @chefs.map { |chef| 

      ["#{chef[:first_name]} #{chef[:last_name]}",chef[:id]]

    }

    @recipe.ingredient_recipes.build(:ingredient => Ingredient.new) 
    render :'recipes/new'
  end

  get :show, :with => :id do
    @recipe = Recipe.find(params[:id])
    @title = @recipe.title
    @ingredients = @recipe.ingredients

    @instructions = @recipe.instructions.split(".")
    render :'recipes/show'
  end

  get :by_category, :with => :category_id do
    @category = Category.find(params[:category_id])
    @title = "#{@category.name} Recipes"
    @recipes = @category.recipes
    render :'recipes/by_category'
  end

  get :by_chef, :with => :chef_id do
    @chef = Chef.find(params[:chef_id])
    @recipes = Recipe.all.where(:chef_id => params[:chef_id])

    @title = "#{@chef.first_name} #{@chef.last_name} Recipes" 
    render :'recipes/by_chef'

  end
  
  post :create, :map => "/recipes" do

    @recipe = Recipe.new(params[:recipe])
    @recipe.save!
    flash[:notice]
    redirect 'recipes/new'
  end

end
