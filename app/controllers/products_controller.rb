class ProductsController < ApplicationController
  def all_available_method
    products = Product.all
    render json: products.as_json
    
  end
end
