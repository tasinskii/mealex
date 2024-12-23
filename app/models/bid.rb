class Bid < ApplicationRecord
  validates :loc, presence: true
  validates :item, presence: true
  validates :price, presence: true
  validates :phnumber, presence: true
  validates :bid_or_offer, presence: true
end
