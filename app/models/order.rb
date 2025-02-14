class Order < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :order_products
end
