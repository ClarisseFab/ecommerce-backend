class OrderProduct < ApplicationRecord
  self.table_name = 'orders_products'
  belongs_to :order
  belongs_to :product
end
