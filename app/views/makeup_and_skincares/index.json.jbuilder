json.array!(@makeup_and_skincares) do |makeup_and_skincare|
  json.extract! makeup_and_skincare, :id, :title, :category, :certification, :ingredient, :usage, :made_by_country, :description, :brand, :color, :effect
  json.url makeup_and_skincare_url(makeup_and_skincare, format: :json)
end
