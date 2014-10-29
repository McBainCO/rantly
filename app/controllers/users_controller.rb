class UsersController < ApplicationController

  def idex
    @users = User.all
  end

  def new
    @user = User.new
  end


  def create
    @user = User.new(allowed_params)
    if
      @user.save
      redirect_to root_path
      flash[:notice] = 'Your have registered Successfuly'
    else
      render :new
    end
  end

  def homepage

  end


end

  private

  def allowed_params
    params.require(:user).permit(:name, :email, :password)


  end


