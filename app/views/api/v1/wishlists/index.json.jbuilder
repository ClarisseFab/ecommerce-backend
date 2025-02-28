json.array! @wishlists do |wishlist|
  json.extract! wishlist, :id, :user_id, :product_id
  json.product do
    json.extract! wishlist.product, :id, :name, :price
    json.photo wishlist.product.photo.attached? ? url_for(wishlist.product.photo) : nil
  end
  # json.id shopping_cart.id
  # json.user_id shopping_cart.user_id
end
