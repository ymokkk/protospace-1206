class LikesController < ApplicationController
before_action :prototype_params
  def create
    #@like = current_user.likes.new(prototype_id: @prototype.id)
    #@like.save
    #@likes = Like.where(prototype_id: @prototype.id)
    Like.create(user_id: current_user.id, prototype_id: params[:id])
  end

  def destroy
    #@like = Like.find_by(prototype_id: @prototype.id, user_id: current_user.id).destroy
    #@likes = Like.where(prototype_id: @prototype.id)
    Like.find_by(user_id: current_user.id, prototype_id: params[:id]).destroy
  end

  private

  def prototype_params
    @prototype = Prototype.find(params[:id])
  end
end
