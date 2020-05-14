class ArtworkSharesController < ApplicationController
  def index
    user = User.find(params[:id])
    render json: user.shared_artworks
  end

  def create
    share = ArtworkShare.new(artwork_share_params)
    if share.save
      head 201
    else
      render json: share.errors.full_messages, status: 422
    end
  end

  def destroy
    share = ArtworkShare.find(params[:id])
    share.destroy
  end


  def artwork_share_params
    params.require(:share).permit(:artwork_id, :viewer_id, :favorite_artwork)
  end

end