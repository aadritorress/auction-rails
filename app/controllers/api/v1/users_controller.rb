class Api::V1::UsersController < ApplicationController

def index
  users = User.all
  render json: users
end 

def show 
  user = User.find(params[:id])
  render json: user, except: [:created_at, :updated_at]
end 

def profile
render json: { user: UserSerializer.new(logged_in?) }
end 

def create
  # byebug
    @user = User.create(user_params)
  if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
  else
      render json: { error: 'failed to create user' }, status: :not_acceptable
  end
end

  private
  def user_params
    params.require(:user).permit(:name, :email, :username, :password)
  end

end 


