class LikesController < ApplicationController

  def index
    query = {}
    query[:user_id] = like_params[:user_id] if like_params.key?(:user_id)
    content_id = like_params[:artwork_id] || like_params[:comment_id]
    content_type = if like_params[:artwork_id]
                     'Artwork'
                   elsif like_params[:comment_id]
                     'Comment'
                   else
                     nil
                   end
    query[:content_id] = content_id if content_id && content_type
    query[:content_type] = content_type if content_type
    render json: Like.where(query)
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