class OrdersControllerController < ApplicationController

  def index
    @orders = Order.all 
    render 'index.json.jbuilder'
    
  end

  def create

    @order = Order.new(
                      user_id: current_user.id,
                      product_id: params[:product_id],
                      quantity: params[:quantity]
                      )
    
    @order.calculate_totals
    @order.save
    render 'show.json.jbuilder'
  end

end
