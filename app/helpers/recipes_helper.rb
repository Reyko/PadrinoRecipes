# Helper methods defined here can be accessed in any controller or view in the application

PadrinoRecipies::App.helpers do
  # def simple_helper_method
  #  ...
  # end

  def get_qty(ingredient)
    ingredient.ingredient_recipes.first.qty
  end
  
  # def get_name(ingredient)
  #   ingredient.ingredient_recipes.first.name
  # end

end
