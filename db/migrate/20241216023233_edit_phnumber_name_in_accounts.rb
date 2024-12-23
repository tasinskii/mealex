class EditPhnumberNameInAccounts < ActiveRecord::Migration[8.0]
  def change
    remove_column :accounts, :phnum, :string
    add_column :accounts, :phnumber, :string
  end
end
