json.array! @shopping_carts do |shopping_cart|
  json.extract! shopping_cart, :id, :user_id, :product_id, :quantity
  json.product do
    json.extract! shopping_cart.product, :id, :name, :price
  end
  # json.id shopping_cart.id
  # json.user_id shopping_cart.user_id
end
