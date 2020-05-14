class CollectionArtworksController < ApplicationController

  def index
    collection = Collection.find(params[:collection_id])
    render json: collection.artworks
  end

  def create
    collection = Collection.find(params[:collection_id])
    ca = CollectionArtwork.new(collection_id: collection.id, artwork_id: params[:artwork_id])
    if ca.save
      head 201
    else
      render json: ca.errors.full_messages, status: 422
    end
  end

  def destroy
    ca = CollectionArtwork.find_by(collection_artworks_params)
    if ca
      ca.destroy
    else
      head 400
    end
  end

  def collection_artworks_params
    params.permit(:artwork_id, :collection_id)
  end

end