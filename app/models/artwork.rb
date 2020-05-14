class Artwork < ApplicationRecord

  validates :artist_id, uniqueness: { scope: :title }
  validates :title, presence: true
  validates :artist_id, presence: true
  validates :image_url, presence: true

  has_many :artwork_shares,
           foreign_key: :artwork_id,
           class_name: 'ArtworkShare'

  has_many :comments,
           foreign_key: :artwork_id,
           class_name: 'Comment',
           dependent: :destroy

  belongs_to :artist,
             foreign_key: :artist_id,
             class_name: 'User'

  has_many :likes,
           as: :content

  has_many :collection_artworks,
    foreign_key: :artwork_id,
    class_name: 'CollectionArtwork'
  
  has_many :collections,
    through: :collection_artworks,
    source: :collection

  scope :favorites, -> { where(favorite_artwork: true) }


end
