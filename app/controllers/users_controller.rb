class UsersController < ApplicationController

  def index
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


end

  private

  def allowed_params
    params.require(:user).permit(:name, :email, :password)


  end


