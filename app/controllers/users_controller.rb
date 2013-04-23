class UsersController < ApplicationController
  def create 
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_urls_path(@user)
    else
      render "home/signup" 
    end
  end

  def update
  end
end
