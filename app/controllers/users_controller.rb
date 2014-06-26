class UsersController < ApplicationController

  def show      
    @user = User.find(params[:id])          #show is to show user profile
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to restaurants_url, :notice => "You are signed up for Seat Yourself. BOOM!"
      else
        render :new
      end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to restaurants_url
    else
      render :edit
    end
  end

  def destroy
  end
end
