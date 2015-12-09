json.array!(@sellers) do |seller|
  json.extract! seller, :id, :name, :company_name, :phone
  json.url seller_url(seller, format: :json)
end
