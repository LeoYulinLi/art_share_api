class LikesController < ApplicationController

  def index
    user = User.find(like_params[:user_id])
    render json: user.liked_comments + user.liked_artworks
  end

  def create
    like = Like.new(like_params)
    if like.save
      head 201
    else
      render json: like.errors.full_messages, status: 422
    end
  end

  def destroy
    Like.find(params[:id]).destroy
  end

  def like_params
    params.permit(:user_id, :artwork_id, :comment_id)
  end

end