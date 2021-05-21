class Api::V1::AuthController < ApplicationController
    def login
        # byebug
        # search for a user
        user = User.find_by(username: auth_param[:name])
        if user && user.authenticate(auth_param[:password])
            render json: {user: UserSerializer.new(user), token: JWT.encode({user_id: user.id}, "Auction")}

        else 
            render json: {error: "incorrect email or password"}
        end
    end 

    # //strong params 
def auth_param
    params.require(:auth).permit(:name, :password)
end

end
