class AddStockPricesToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :stock_price, :integer
  end
end
