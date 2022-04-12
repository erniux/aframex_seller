Rails.application.routes.draw do
  get 'pages/home'
  resources :capacidad_compuerta
  resources :productos
  
  resources :cotiza_compuerta do
    get 'calcula_paso_agua', on: :collection
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
