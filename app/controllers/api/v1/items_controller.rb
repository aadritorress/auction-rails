class Api::V1::ItemsController < ApplicationController
before_action :logged_in?

def index
  items = Item.all
  render json: items
end 

def show
    item = Item.find(params[:id])
    render json: item, except: [:created_at, :updated_at]
end
    
def create
    item = Item.create(picture: params[:picture], name: params[:name], initial_price: params[:initial_price], condition: params[:condition], sold: params[:sold], city: params[:city], user_id: params[:user_id])
    render json: item, except: [:created_at, :updated_at]
end 



end
