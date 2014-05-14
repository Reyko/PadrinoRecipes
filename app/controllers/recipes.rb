PadrinoRecipies::App.controllers :recipes do
  
<<<<<<< HEAD
  get :new do
    200
=======
  get :by_category, :with => :category_id do
    @category = Category.find(params[:category_id])
    @recipes = @category.recipes

    render 'recipes/by_category'
>>>>>>> categorisations
  end
  

end
