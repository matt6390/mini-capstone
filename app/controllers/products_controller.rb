class ProductsController < ApplicationController
  def all_available_method
    products = Product.all
    render json: products.as_json
  end

  def teddy_method
    product = Product.find_by(name: "One-Eyed Teddy")
    render json: product.as_json
  end

  def calc_method
    product = Product.find_by(name: "Constant Calculator")
    render json: product.as_json
  end

  def capstone_method
    product = Product.find_by(name: "Capstone Cookbook")
    render json: product.as_json
  end
end
