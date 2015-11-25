json.array!(@stores) do |store|
  json.extract! store, :id, :store_name, :contact_number, :contact_address, :owner
  json.url store_url(store, format: :json)
end
