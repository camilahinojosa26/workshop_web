Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home" #esta es la ruta pricipal con devise si o si se necesita esta root que es una ruta base
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :tweets, except: [:update, :edit]
  
end
