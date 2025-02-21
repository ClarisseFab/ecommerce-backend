json.array! @products do |product|
  json.extract! product, :id, :name, :duration, :length, :difficulty, :height, :description, :departure_place, :period, :photo, :price
  json.photo product.photo.attached? ? url_for(product.photo) : nil
end
