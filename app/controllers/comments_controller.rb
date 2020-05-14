class CommentsController < ApplicationController

  def index
    render json: if params[:id]
                   Comment.find(id)
                 else
                   Comment.where(comment_params)
                 end
  end

  def show
    comment = Comment.find(params[:id])
    if comment
      render json: comment
    else
      head 404
    end
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      head 201
    else
      render json: comment.errors.full_messages, status: 422
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
  end

  def comment_params
    params.permit(:user_id, :artwork_id, :body)
  end

end