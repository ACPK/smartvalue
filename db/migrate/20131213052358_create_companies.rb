class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :symbol
      t.string :market
      t.integer :cash_per_share
      t.integer :cash_flow_per_share

      t.timestamps
    end
  end
end
