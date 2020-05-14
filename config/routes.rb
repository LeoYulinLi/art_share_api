Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create, :show, :update, :destroy] do
    resources :artworks, only: [:index]
    resources :comments, only: [:index]
    resources :collections, only: [:index]
    resources :likes, only: [:index]
    get 'favorites', on: :member
  end
  resources :artworks, only: [:create, :show, :update, :destroy] do
    resources :comments, only: [:index]
    resources :likes, only: [:index]
  end
  resources :artwork_shares, only: [:create, :destroy]
  resources :comments, only: [:show, :create, :destroy] do
    resources :likes, only: [:index]
  end
  resources :likes, only: [:create, :destroy]
  resources :collections, only: [:create, :show, :destroy, :update] do
    resources :artworks, controller: 'collection_artworks', only: [:index, :create, :destroy]
  end
end
