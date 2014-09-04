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

      flash[:notice] = "Your have registered Successfuly"
      redirect_to root_path
    end


  end

end

  private

  def allowed_params
    params.require(:user).permit(:name, :email)


  end


