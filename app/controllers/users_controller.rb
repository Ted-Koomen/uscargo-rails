class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users
    end
    def new 
        user = User.new(username: params[:userName], email: params[:email], password:params[:password], access_token: SecureRandom.base64)
        if !user.save
            render json: user.errors.full_messages
        end
    end

    private

    def user_params
        params.require(:user).permit(:userName, :password, :email)
    end
end
