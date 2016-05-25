json.array!(@favourites) do |favourite|
  json.extract! favourite, :id, :item, :user_id, :item_code
  json.url favourite_url(favourite, format: :json)
end
