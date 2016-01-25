json.array!(@bath_supplies) do |bath_supply|
  json.extract! bath_supply, :id, :title, :category, :ingredient, :usage, :made_by_country, :description, :brand, :effect, :certification, :age_group
  json.url bath_supply_url(bath_supply, format: :json)
end
