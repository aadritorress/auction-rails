class Api::V1::ItemsController < ApplicationController
before_action :logged_in?

def index
  items = Item.all
  render json: items
end 



end
