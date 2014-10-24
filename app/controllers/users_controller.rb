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
      flash[:notice] = 'Your have registered Sucessfuly'
      redirect_to root_path
    else
      render :new
    end
  end

  def homepage

  end


end

  private

  def allowed_params
    params.require(:user).permit(:name, :email, :password_digest)


  end


