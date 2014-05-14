PadrinoRecipies::App.controllers :recipes do
  
  get :by_category, :with => :category_id do
    @category = Category.find(params[:category_id])
    @recipes = @category.recipes

    render 'recipes/by_category'
  end
  

end
