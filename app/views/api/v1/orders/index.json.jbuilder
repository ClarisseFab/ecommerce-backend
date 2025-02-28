json.array! @orders do |order|
  json.extract! order, :id, :user_id, :total_price, :date
  json.order_products order.order_products, :id, :product_id, :order_id, :quantity
end
