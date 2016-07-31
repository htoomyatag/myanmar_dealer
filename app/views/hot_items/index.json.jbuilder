json.array!(@hot_items) do |hot_item|
  json.extract! hot_item, :id, :image_data
  json.url hot_item_url(hot_item, format: :json)
end
