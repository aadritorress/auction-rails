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
  item = Item.create(image: params[:image], name: params[:name], price: params[:price], condition: params[:condition], sold: params[:sold], city: params[:city], user_id: params[:user_id], charity_id: params[:charity_id])
  render json: item, except: [:created_at, :updated_at]
end 

def update 
  item = Item.find(params[:id])
  item.update(sold: params[:item][:sold])
  render json: item
end


def destroy
item = Item.find(params[:id])
item.destroy
end 
    


end
