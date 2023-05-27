Rails.application.routes.draw do
  resources :dateers
  resources :floaters
  resources :booleans
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/products', to: 'products#index'
  get '/products/new', to: 'products#new'
  get '/products/:id', to: 'products#show', as: 'product'
  get '/products/:id/edit', to: 'products#edit', as: 'product_edit'
  
  post '/products', to: 'products#save', as: 'product_save'
  patch '/products/:id', to: 'products#update', as: 'product_update'
end
