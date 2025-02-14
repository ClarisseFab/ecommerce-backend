json.array! @orders do |order|
  json.extract! order, :id, :user_id, :total_price, :date
  # json.product do
  #   json.extract! wishlist.product, :id, :name, :price
  # end
  # json.id shopping_cart.id
  # json.user_id shopping_cart.user_id
end
