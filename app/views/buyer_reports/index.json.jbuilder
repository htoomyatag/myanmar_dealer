json.array!(@buyer_reports) do |buyer_report|
  json.extract! buyer_report, :id, :title, :purchase_date, :description
  json.url buyer_report_url(buyer_report, format: :json)
end
