json.array!(@toys) do |toy|
  json.extract! toy, :id, :title, :price, :quantity, :weight, :made_by_country, :made_with, :description, :color, :age_group
  json.url toy_url(toy, format: :json)
end
