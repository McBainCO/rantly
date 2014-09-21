class SessionsController < ApplicationController

  def new
    @user = User.new
end

  def create
      @user = User.find_by(email: params[:user][:email])
      if @user && @user.password == params[:user][:password]
        session[:user_id] = @user.id
      else
        render :new
      end
  end
end
