json.array! @products.each do |product|
  json.id product.id
  json.name product.name
  json.price product.price
  json.formatted_price number_to_currency(product.price)
  json.image_url product.image_url
  json.is_discounted product.is_discounted
  json.tax product.tax
  json.total product.total
  json.on_sale product.on_sale
  json.description product.description
  json.created_at product.friendly_created_at
  json.updated_at product.friendly_updated_at
end