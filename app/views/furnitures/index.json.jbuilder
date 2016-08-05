json.array!(@furnitures) do |furniture|
  json.extract! furniture, :id, :title, :weight, :dimension, :price, :made_by, :brand, :avatar_1, :avatar_2, :avatar_3, :avatar_4
  json.url furniture_url(furniture, format: :json)
end
