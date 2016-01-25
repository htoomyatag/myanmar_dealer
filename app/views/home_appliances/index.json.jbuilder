json.array!(@home_appliances) do |home_appliance|
  json.extract! home_appliance, :id, :title, :price, :quantity, :size, :weight, :made_by_country, :description, :brand, :category, :modal_number, :color, :feature, :power, :voltage
  json.url home_appliance_url(home_appliance, format: :json)
end
