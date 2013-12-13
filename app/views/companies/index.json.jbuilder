json.array!(@companies) do |company|
  json.extract! company, :id, :name, :symbol, :market, :cash_per_share, :cash_flow_per_share
  json.url company_url(company, format: :json)
end
