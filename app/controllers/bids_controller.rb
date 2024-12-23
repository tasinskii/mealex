class BidsController < ApplicationController
  allow_unauthenticated_access only: %i[index show]
  before_action :set_bid, only: %i[ show destroy ]
  def index
    @bids = Bid.all
  end

  def show
    @bid = Bid.find(params[:id])
  end

  def new
    @bid = Bid.new
  end

  def create
    @bid = Bid.new(bid_params.merge(user_id: get_user_id))
    if @bid.save
      redirect_to bids_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bid.destroy
    redirect_to bids_path
  end

  private
    def set_bid
      @bid = Bid.find(params[:id])
    end
    def bid_params
      params.expect(bid: [:loc, :item, :price, :phnumber, :bid_or_offer, :user_id])
    end
end
