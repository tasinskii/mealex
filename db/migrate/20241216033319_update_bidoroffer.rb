class UpdateBidoroffer < ActiveRecord::Migration[8.0]
  def change
    change_column :bids, :bid_or_offer, :text
  end
end
