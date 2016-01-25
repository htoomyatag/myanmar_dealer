json.array!(@services) do |service|
  json.extract! service, :id, :title, :charges, :service_category, :description
  json.url service_url(service, format: :json)
end
