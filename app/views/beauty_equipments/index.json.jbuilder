json.array!(@beauty_equipments) do |beauty_equipment|
  json.extract! beauty_equipment, :id, :title, :category, :brand, :made_by_country, :description, :feature, :modal_number, :color
  json.url beauty_equipment_url(beauty_equipment, format: :json)
end
