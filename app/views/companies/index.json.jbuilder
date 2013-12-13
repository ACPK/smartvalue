json.array!(@companies) do |company|
  json.extract! company, :id, :name, :logo, :description, :num_shares, :free_cash_flow
  json.url company_url(company, format: :json)
end
