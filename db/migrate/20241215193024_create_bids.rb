class CreateBids < ActiveRecord::Migration[8.0]
  def change
    create_table :bids do |t|
      t.string :loc
      t.string :item
      t.string :phnumber
      t.float :price
      t.timestamps
    end
  end
end
