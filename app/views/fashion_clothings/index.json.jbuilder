json.array!(@fashion_clothings) do |fashion_clothing|
  json.extract! fashion_clothing, :id, :title, :price, :quantity, :size, :made_by_country, :made_with, :description, :gender, :brand
  json.url fashion_clothing_url(fashion_clothing, format: :json)
end
