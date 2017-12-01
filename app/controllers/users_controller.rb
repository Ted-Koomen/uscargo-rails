class UsersController < ApplicationController
     def new 
        user = User.new(username: params[:userName], email: params[:email], password_digest: params[:password], access_token: SecureRandom.base64)
        if !user.save
            render json: user.errors.full_messages
        end
    end

    private

    def user_params
        params.require(:user).permit(:userName, :password, :email)
    end
end
