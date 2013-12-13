# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
companies_file = Rails.root.join('db', 'companies.json')
company_hashes = JSON.parse(open(companies_file).read)

Company.destroy_all
company_hashes.each do |company_hash|
  c = Company.new
  c.name = company_hash["Company"]["CompanyName"]
  c.symbol = company_hash["Company"]["Symbol"]
  c.market = company_hash["Company"]["Market"]
  c.stock_price = company_hash["Company"]["StockPrice"]*100
  c.cash_per_share = company_hash["OtherRatios"]["CashPerShare"]*100
  c.cash_flow_per_share = company_hash["OtherRatios"]["CashFlowPerShare"]*100
  c.save
end

puts "You have #{Company.count} companies in your database."
