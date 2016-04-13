json.array!(@stores) do |store|
  json.extract! store, :id, :store_name, :store_address, :store_contact, :description, :user_id, :seller_name
  json.url store_url(store, format: :json)
end
