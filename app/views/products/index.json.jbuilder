json.array!(@products) do |product|
  json.extract! product, :id, :title, :color, :size, :weight, :user_id
  json.url product_url(product, format: :json)
end
