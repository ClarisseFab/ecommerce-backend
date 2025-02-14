class Product < ApplicationRecord
  has_many :wishlists

  has_one_attached :photo
end
