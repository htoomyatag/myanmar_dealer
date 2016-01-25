json.array!(@fashion_accessories) do |fashion_accessory|
  json.extract! fashion_accessory, :id, :title, :price, :quantity, :made_by_country, :made_with, :description, :brand
  json.url fashion_accessory_url(fashion_accessory, format: :json)
end
