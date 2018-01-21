class Product < ApplicationRecord

  def is_discounted
    price < 30  #this is a replacement for the if statement that I had there earlier, since our code is trying to find a true or false answer, we dont need to run an entire block of code, we just have to get that true/false answer
  end

  def tax
    price * 0.09
  end

  def total
    tax + price
  end

  def friendly_created_at
    created_at.strftime("%m-%e-%y, %H:%M")
  end

  def friendly_updated_at
    updated_at.strftime("%m-%e-%y, %H:%M")
  end

  def as_json
            {
              id: id,
              name: name,
              price: price,
              is_discounted: is_discounted,
              tax: tax,
              total: total,
              image_url: image_url,
              description: description,
              created_at: friendly_created_at,
              updated_at: friendly_updated_at
            }
    
  end
end
