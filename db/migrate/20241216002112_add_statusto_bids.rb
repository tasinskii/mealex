class AddStatustoBids < ActiveRecord::Migration[8.0]
  def change
    add_column :bids, :status, :boolean
  end
end
