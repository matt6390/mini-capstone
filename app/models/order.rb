class Order < ApplicationRecord
  belongs_to :user

  has_many :carted_products
  has_many :products, through: :carted_products

  def calculate_subtotal
    sum = 0
    carted_products.each do |carted_product|
      sum += carted_product.subtotal
    end
    self.subtotal = sum
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = tax * subtotal
  end

  def calculate_totals
    calculate_subtotal
    calculate_tax
    calculate_total
    save
  end

  #the below code is commented out because it is not needed anymore, since we are changing the code around in the controllers a bit

  # def calculate_subtotal
  #   self.subtotal = product.price * quantity
  # end

  # def calculate_tax
  #   self.tax = subtotal * 0.09
  # end

  # def calculate_total
  #   self.total = tax + subtotal
  # end

  # def calculate_totals
  #   calculate_subtotal
  #   calculate_tax
  #   calculate_total
  # end
  
end
