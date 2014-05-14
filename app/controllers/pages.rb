PadrinoRecipies::App.controllers :pages do
  
  get :home, :map => '/' do
    @categories = Category.all
    render 'pages/homepage'
  end

end
