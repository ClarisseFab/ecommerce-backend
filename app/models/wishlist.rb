class Wishlist < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :products
end
