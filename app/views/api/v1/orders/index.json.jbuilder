json.array! @orders do |order|
  json.extract! order, :id, :user_id, :total_price, :date
  json.order_products do
    json.extract! order.order_products
  end
  # json.id shopping_cart.id
  # json.user_id shopping_cart.user_id
end
