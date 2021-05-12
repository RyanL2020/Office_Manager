class UsersController < ApplicationController

    before_action :find_user, only: [:show]

    def index
        @users = User.all 
    end 
    def show
    end 

    def new
        @user = User.new
    end 

    def create
        @user = User.new(user_params)
        if @user.save 
            redirect_to user_path(@user)
        else 
            render :new
        end 
    end 






    private 

    def find_user
        @user = User.find_by(params[:id])
    end 

    def user_params
        params.require(:user).permit(:firs_name, :last_name, :username, :password )
    end 


end
