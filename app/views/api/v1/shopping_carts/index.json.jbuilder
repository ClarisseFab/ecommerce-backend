json.array! @shopping_carts do |shopping_cart|
  json.extract! shopping_cart, :id, :user_id, :product_id, :quantity
  json.product do
    json.extract! shopping_cart.product, :id, :name, :price
    json.photo shopping_cart.product.photo.attached? ? url_for(shopping_cart.product.photo) : nil
  end
  # json.id shopping_cart.id
  # json.user_id shopping_cart.user_id
end
