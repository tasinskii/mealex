class AddNetidToAccounts < ActiveRecord::Migration[8.0]
  def change
    add_column :accounts, :netid, :string
  end
end
