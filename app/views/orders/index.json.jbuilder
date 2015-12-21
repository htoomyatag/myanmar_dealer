json.array!(@orders) do |order|
  json.extract! order, :id, :store_id, :customer_name, :customer_email, :customer_phone, :customer_city, :customer_township, :customer_address
  json.url order_url(order, format: :json)
end
