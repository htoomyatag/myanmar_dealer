json.array!(@telephone_accessories) do |telephone_accessory|
  json.extract! telephone_accessory, :id, :title, :price, :quantity, :size, :weight, :made_by_country, :description, :brand, :category, :modal_number, :color, :feature, :operation_system
  json.url telephone_accessory_url(telephone_accessory, format: :json)
end
