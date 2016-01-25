json.array!(@training_and_schools) do |training_and_school|
  json.extract! training_and_school, :id, :title, :fees, :period, :school, :description
  json.url training_and_school_url(training_and_school, format: :json)
end
