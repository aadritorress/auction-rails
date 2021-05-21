class Api::V1::CharitiesController < ApplicationController

def index
  charities = Charity.all
  render json: charities
end 

def show 
  charity = Charity.find(params[:id])
  render json: charity, except: [:created_at, :updated_at]
end 


end
