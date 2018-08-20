class LikesController < ApplicationController
  before_action :authenticate_user!
  def like_toggle
    like = Like.find_by(user: current_user, article_id: params[:id])
    if like.nil?
      Like.create!(user: current_user, article_id: params[:id])
    else
      like.destroy
    end
    redirect_to article_url(params[:id])
  end
end
