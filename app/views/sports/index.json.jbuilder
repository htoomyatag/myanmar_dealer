json.array!(@sports) do |sport|
  json.extract! sport, :id, :title, :price, :quantity, :weight, :made_by_country, :made_with, :description, :color, :brand, :category
  json.url sport_url(sport, format: :json)
end
