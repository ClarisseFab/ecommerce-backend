json.array! @products do |product|
  json.extract! product, :id, :name, :duration, :length, :difficulty, :height, :description, :departure_place, :period, :photo, :price
end
