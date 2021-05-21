class Api::V1::PurchasesController < ApplicationController

def index
  purchases = Purchase.all
  render json: purchases
end 

def show 
  purchase = Purchase.find(params[:id])
  render json: purchase, except: [:created_at, :updated_at]
end 



end
