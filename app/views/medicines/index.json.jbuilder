json.array!(@medicines) do |medicine|
  json.extract! medicine, :id, :title, :category, :certification, :ingredient, :usage, :made_by_country, :description, :caution
  json.url medicine_url(medicine, format: :json)
end
