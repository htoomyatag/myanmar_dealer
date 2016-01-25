json.array!(@instruments) do |instrument|
  json.extract! instrument, :id, :title, :price, :quantity, :dimension, :weight, :made_by_country, :made_with, :description, :brand, :modal_number, :specification, :color
  json.url instrument_url(instrument, format: :json)
end
