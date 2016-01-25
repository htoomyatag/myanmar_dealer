json.array!(@car_accessories) do |car_accessory|
  json.extract! car_accessory, :id, :title, :price, :quantity, :size, :weight, :made_by_country, :made_with, :description, :brand, :specification, :modal_number, :color, :feature
  json.url car_accessory_url(car_accessory, format: :json)
end
