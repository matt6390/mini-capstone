Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  
  get "/products" => 'products#index'
  post "/products" => 'products#create'
  get "/products/:id" => 'products#show'
  patch "/products/:id" => 'products#update'
  delete "/products/:id" => 'products#destroy'

  get "/suppliers/:id" => 'suppliers#show'
  post "/users" => 'users#create'

  get "/orders" => 'orders#index'
  post "/orders" => 'orders#create'
end
