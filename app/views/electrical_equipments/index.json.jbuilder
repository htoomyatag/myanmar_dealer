json.array!(@electrical_equipments) do |electrical_equipment|
  json.extract! electrical_equipment, :id, :title, :price, :quantity, :size, :weight, :made_by_country, :description, :brand, :category, :modal_number, :color
  json.url electrical_equipment_url(electrical_equipment, format: :json)
end
