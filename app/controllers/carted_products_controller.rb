.pclass CartedProductsController < ApplicationController
  
  def index
    # @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    @carted_products = current_user.cart #this is a little bit easier for rails to read and understand than the commented out line above
    render 'index.json.jbuilder'
  end



  def create
    @carted_product = CartedProduct.new(
                                  user_id: current_user.id,
                                  product_id: params[:product_id],
                                  quantity: params[:quantity],
                                  status: "carted"
                                  )
    if @carted_product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @carted_products.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])

    # carted_product.status = "removed"
    # carted_product.save

    carted_product.update(status: "removed")

    render json: {message: "Product removed from your cart"}
  end
end







