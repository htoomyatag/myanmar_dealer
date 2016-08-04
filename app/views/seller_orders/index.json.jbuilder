json.array!(@seller_orders) do |seller_order|
  json.extract! seller_order, :id, :customer_name
  json.url seller_order_url(seller_order, format: :json)
end
