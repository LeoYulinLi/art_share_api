class CollectionsController < ApplicationController

  def index
    collections = Collection.where(user_id: params[:user_id])
    render json: collections
  end

  def create
    collection = Collection.new(collection_params)
    if collection.save
      head 201
    else
      render json: collection.errors.full_messages, status: 422
    end
  end

  def destroy
    Collection.find(params[:id]).destroy
  end

  def show
    collection = Collection.find(params[:id])
    if collection
      render json: collection
    else
      head 404
    end
  end

  def update
    collection = Collection.find(params[:id])
    collection.update(collection_params)
    if collection.save
      head 200
    else
      render json: collection.errors.full_messages, status: 422
    end
  end


  def collection_params
    params.require(:collection).permit(:user_id, :name)
  end

end