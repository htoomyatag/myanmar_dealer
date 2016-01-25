json.array!(@equipment) do |equipment|
  json.extract! equipment, :id, :title, :price, :quantity, :size, :weight, :made_by_country, :made_with, :description, :brand, :specification, :modal_number, :color
  json.url equipment_url(equipment, format: :json)
end
