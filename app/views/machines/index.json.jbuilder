json.array!(@machines) do |machine|
  json.extract! machine, :id, :title, :price, :quantity, :dimension, :weight, :made_by_country, :made_with, :description, :brand, :category, :modal_number, :specification, :color
  json.url machine_url(machine, format: :json)
end
