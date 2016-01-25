json.array!(@fashion_footwears) do |fashion_footwear|
  json.extract! fashion_footwear, :id, :title, :price, :quantity, :made_by_country, :made_with, :description, :footwear_type, :size, :brand
  json.url fashion_footwear_url(fashion_footwear, format: :json)
end
