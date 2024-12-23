class AddBidorOffertoBids < ActiveRecord::Migration[8.0]
  def change
    add_column :bids, :bid_or_offer, :boolean
  end
end
