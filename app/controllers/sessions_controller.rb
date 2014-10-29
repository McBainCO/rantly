class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
      @user = User.find_by(email: params[:email])
      if @user && @user.authenticate(params[:password_digest])
        session[:user_id] = @user.id
        flash[:notice] = 'Your have logged in Sucessfully'
        redirect_to root_path
      else
        @user = User.new
        @user.errors[:base] = "Username/Password invalid!"
        render :new
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
