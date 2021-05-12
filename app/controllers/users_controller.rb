class UsersController < ApplicationController

    before_action :find_user, only: [:show]

    def index
        @users = User.all 
    end 
    def show
    end 






    private 

    def find_user
        @user = User.find_by(params[:id])
    end 

    def user_params
        params.require(:user).permit(:firs_name, :last_name, :username, :password )
    end 


end
