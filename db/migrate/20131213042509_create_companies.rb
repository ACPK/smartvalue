class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :logo
      t.string :description
      t.integer :num_shares
      t.integer :free_cash_flow

      t.timestamps
    end
  end
end
