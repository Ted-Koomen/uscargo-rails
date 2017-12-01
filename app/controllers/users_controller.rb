class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users
    end
   
    def new 
        user = User.new(username: params[:userName], email: params[:email], password:params[:password], access_token: SecureRandom.hex(15))
        if !user.save
            render :json => {
                status: 'error',
                errors: user.errors.full_messages
            }
        else
            session[:access_token] = user.access_token
            render json: user
        end
    end

    def show        
        user = User.find_by(access_token: params[:access_token])
        render json: user        
    end

    private

    def user_params
        params.require(:user).permit(:userName, :password, :email)
    end
end
