class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_param)
        if @user.save
            flash[:success] = "You have been registerd"
            redirect_to root_path
        else
            render 'new'
        end
    end
       
    def index
        @categories = Category.all
    end
    private

    def user_param
        params.require(:user).permit(:name)
    end
end
