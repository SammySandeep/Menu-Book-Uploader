Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :menu_items, only: [:new, :create]
  root to: 'menu_items#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
