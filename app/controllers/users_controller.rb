class UsersController < ApplicationController

  def index
    @user
  end

  def new
    @user = User.new
  end

  def create

  end

end
