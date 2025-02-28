json.extract! @product, :id, :name, :duration, :length, :difficulty, :height, :description, :departure_place, :period, :photo, :price
json.photo @product.photo.attached? ? url_for(@product.photo) : nil
json.wishlist @product.wishlists, :id, :user_id, :product_id
# json.comments @restaurant.comments do |comment|
#   json.extract! comment, :id, :content
# end
