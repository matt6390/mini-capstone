Rails.application.routes.draw do
  get "/all_available_products" => 'products#all_available_method'
end
