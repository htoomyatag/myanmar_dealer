json.array!(@fashion_hats) do |fashion_hat|
  json.extract! fashion_hat, :id, :title, :price, :quantity, :made_by_country, :made_with, :description, :brand, :hat_type
  json.url fashion_hat_url(fashion_hat, format: :json)
end
