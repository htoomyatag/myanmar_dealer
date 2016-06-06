json.array!(@users) do |user|
  json.extract! user, :id, :name, :phone, :address, :has_store, :company_name
  json.url user_url(user, format: :json)
end
