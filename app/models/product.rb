class Product < ApplicationRecord
  belongs_to :supplier
  has_many :orders
  has_many :pictures

  has_many :product_categories
  has_many :categories, through: :product_categories



  validates :name, presence: true
  validates :name, uniqueness: true

  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}

  validates :description, length: { in: 10..500}

  def is_discounted
     price.to_i < 30
  end

  def tax
    price.to_i * 0.09
  end

  def total
    tax + price.to_i
  end

  def friendly_created_at
    created_at.strftime("%m-%e-%y, %H:%M")
  end

  def friendly_updated_at
    updated_at.strftime("%m-%e-%y, %H:%M")
  end

  # def as_json     WE DONT NEED THIS ANYMORE, SINCE WE HAVE REPLACED IT WITH THE GLOBAL VARIABLES
  
  #           {
  #             id: id,
  #             name: name,
  #             price: price,
  #             is_discounted: is_discounted,
  #             tax: tax,
  #             total: total,
  #             image_url: image_url,
  #             on_sale: on_sale,
  #             description: description,
  #             created_at: friendly_created_at,
  #             updated_at: friendly_updated_at
  #           }
    
  # end
end
