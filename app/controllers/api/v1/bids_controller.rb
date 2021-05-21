class Api::V1::BidsController < ApplicationController

def index
  bids = Bid.all
  render json: bids
end 

def show 
  bid = Bid.find(params[:id])
  render json: bid, except: [:created_at, :updated_at]
end 


end
