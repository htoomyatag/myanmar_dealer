json.array!(@products) do |product|
  json.extract! product, :id, :title, :color, :size, :weight, :seller_id
  json.url product_url(product, format: :json)
end
