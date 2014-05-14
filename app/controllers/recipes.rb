PadrinoRecipies::App.controllers :recipes do
  
  before do 

    @categories=Category.all


  end


  get :new do
    @recipe = Recipe.new
    render :'recipes/new'
  end

  get :by_category, :with => :category_id do
    @category = Category.find(params[:category_id])
    @recipes = @category.recipes
    render 'recipes/by_category'
  end
  
  post :create do
    @recipe = Recipe.new(params[:recipe])
    @recipe.save!

    flash[:notice]

  end

end
