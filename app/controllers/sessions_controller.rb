class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(name: params[:session][:name].downcase)
    if @user
      log_in @user
      flash[:success] = 'You Logged in'
      redirect_to root_path
    else
      flash[:danger] = 'Invalid username'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path
  end
end
