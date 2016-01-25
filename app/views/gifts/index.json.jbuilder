json.array!(@gifts) do |gift|
  json.extract! gift, :id, :title, :price, :quantity, :weight, :made_by_country, :made_with, :description, :color
  json.url gift_url(gift, format: :json)
end
