class RemovePriceFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :price, :integer
  end
end
