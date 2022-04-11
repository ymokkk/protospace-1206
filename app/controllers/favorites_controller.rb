class FavoritesController < ApplicationController
  #before_action :set_prototype, only: [:create, :destroy]

  #def create
    #@favorite = current_user.favorites.create(prototype_id: params[:prototype_id])
    #redirect_to prototype_path(@prototype)
    #redirect_back(fallback_location: root_path)
  #end

  #def destroy
    #@favorite = Favorite.find_by(prototype_id: params[:prototype_id], user_id: current_user.id)
    #@prototype = Prototype.find(params[:prototype_id])
    #@favorite = current_user.favorites.find_by(prototype_id: @prototype.id)
    #@favorite.destroy
    #redirect_to prototype_path(@prototype)
    #redirect_back(fallback_location: root_path)
  #end

  #private

  #def set_prototype
    #@prototype = Prototype.find(params[:prototype_id])
  #end
end
