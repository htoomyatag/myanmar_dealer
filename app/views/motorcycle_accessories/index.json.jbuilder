json.array!(@motorcycle_accessories) do |motorcycle_accessory|
  json.extract! motorcycle_accessory, :id, :title, :price, :quantity, :size, :weight, :made_by_country, :made_with, :description, :brand, :specification, :modal_number, :color, :feature
  json.url motorcycle_accessory_url(motorcycle_accessory, format: :json)
end
