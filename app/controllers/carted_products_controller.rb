class CartedProductsController < ApplicationController
  def create
    @carted_product = Product.new(
                                  user_id: current_user.id,
                                  product_id: params[:product_id],
                                  quantity: params[:quantity]
                                  )
    if @carted_product.save
      render 'show.json.jbuilder'
    else
      redner json: {errors: @carted_products.errors.full_messages}, status: :unprocessable_entity
    
  end
end
