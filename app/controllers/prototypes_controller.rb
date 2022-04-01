class PrototypesController < ApplicationController

  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path(@prototype)
    else
     render :new
   end
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :detail, :point, :image).merge(user_id: current_user.id)
  end
end
