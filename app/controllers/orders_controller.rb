class OrdersControllerController < ApplicationController

  def index
    @orders = current_user.orders 
    render 'index.json.jbuilder'
  end

  def create
    carted_products = current_user.cart
    @order = Order.create(user_id: current_user.id)
    carted_products.each { |carted_product| carted_product.update(status: "purchased", order_id: @order.id)  }

    @order.calculate_totals
    render 'show.json.jbuilder'
  end
end
