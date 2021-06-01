class Api::V1::CharitiesController < ApplicationController

def index
  charities = Charity.all
  render json: charities
end 

def show 
  charity = Charity.find(params[:id])
  render json: charity, except: [:created_at, :updated_at]
end 

def update 
  # byebug
  charity = Charity.find(params[:id])
  charity.update(donations: params[:donations])
  render json: charity
end


end
