class AddPwdToAccounts < ActiveRecord::Migration[8.0]
  def change
    add_column :accounts, :pwd, :string
  end
end
