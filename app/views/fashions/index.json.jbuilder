json.array!(@fashions) do |fashion|
  json.extract! fashion, :id, :product_name, :available_size, :available_color, :shop_id, :shop_name
  json.url fashion_url(fashion, format: :json)
end
