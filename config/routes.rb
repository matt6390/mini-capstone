Rails.application.routes.draw do
  get "/all_available_products" => 'products#all_available_method'
  get "/teddy_for_sale" => 'products#teddy_method'
  get "/worthless_calc_for_sale" => 'products#calc_method'
  get "/capstone_for_sale" => 'products#capstone_method'
end
