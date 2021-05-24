class ApplicationController < ActionController::API

def logged_in?
# byebug
headers = request.headers["Authorization"]
token = headers.split(" ")[1]
user_id = JWT.decode(token, "Auction")[0]["user_id"]
user = User.find(user_id)
if user
  # render json: { user: UserSerializer.new(user) }
  return user
else
    render json:{error:' Please log in'} unless user 
end 


end
end 