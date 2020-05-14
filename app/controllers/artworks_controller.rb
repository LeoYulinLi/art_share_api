class ArtworksController < ApplicationController

  def index
    artworks = Artwork.where(artist_id: params[:user_id])
    artworks += User.find(params[:user_id]).shared_artworks
    render json: artworks
  end

  def create
    artwork = Artwork.new(artwork_params)

    if artwork.save
      head 201
    else
      render json: artwork.errors.full_messages, status: 422
    end
  end

  def show
    artwork = Artwork.find(params[:id])
    if artwork
      render json: artwork
    else
      head 404
    end
  end

  def update
    artwork = Artwork.find(params[:id])
    artwork.update(artwork_params)
    if artwork.save
      head 200
    else
      render json: artwork.errors.full_messages, status: 422
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
  end

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id, :favorite_artwork)
  end

end