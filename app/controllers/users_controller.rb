class UsersController < ApplicationController


  # http://localhost:3000/users/?username=asdf => params[:username] = asdf
  # http://localhost:3000/users => params[:username] = nil
  def index
    users = if params[:username]
              User.where("username like '%#{params[:username]}%'")
            else
              User.all
            end
    render json: users
  end

  def create
    user = User.new(user_params)

    if user.save
      head 201
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def show
    user = User.find(params[:id])
    if user
      render json: user
    else
      head 404
    end
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    if user.save
      head 200
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  def favorites
    user = User.find(params[:id])
    faves = user.artworks.merge(Artwork.favorites) + user.shared_artworks.merge(ArtworkShare.favorites)

    render json: faves
  end

  def user_params
    params.require(:user).permit(:username)
  end

end