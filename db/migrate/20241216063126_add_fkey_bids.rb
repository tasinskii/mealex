class AddFkeyBids < ActiveRecord::Migration[8.0]
  def change
    add_reference :bids, :user
  end
end
