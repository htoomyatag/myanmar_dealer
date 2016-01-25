json.array!(@fashion_bags) do |fashion_bag|
  json.extract! fashion_bag, :id, :title, :price, :quantity, :made_by_country, :made_with, :description, :bag_type, :size, :brand
  json.url fashion_bag_url(fashion_bag, format: :json)
end
