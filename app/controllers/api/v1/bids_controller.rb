class Api::V1::BidsController < ApplicationController

def index
  bids = Bid.all
  render json: bids
end 

def show 
  bid = Bid.find(params[:id])
  render json: bid, except: [:created_at, :updated_at]
end 


def create
  bid = Bid.create(item_id: params[:item_id], amount: params[:amount], user_id: params[:user_id])
  render json: bid, except: [:created_at, :updated_at]
end 

def update 
  bid = Bid.find(params[:id])
  bid.update(sold: params[:bid][:amount])
  render json: bid
end



end
