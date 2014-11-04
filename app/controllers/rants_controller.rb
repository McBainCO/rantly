class RantsController < ApplicationController

  def new
    @rants = Rant.new
  end

  def create
    @rant = Rant.new(allowed_params)
    if
    @rant.save
      redirect_to new_rant_path
      flash[:notice] = 'You created a rant!'
    else
      render :new
    end
  end

  def edit

  end


  def destroy

  end




end

def allowed_params
  params.require(:rant).permit(:title, :content, :user_id)


end
