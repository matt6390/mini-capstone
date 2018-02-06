class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true

  def quantity
    product.quantity
  end

  def price
    product.price
  end

  def subtotal
    price * quantity
  end


end
