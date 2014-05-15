PadrinoRecipies::App.controllers :chefs do
  
  get :index do
    @chefs = Chef.all
    render :"chefs/index"
  end
  

end
