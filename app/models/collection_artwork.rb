class CollectionArtwork < ApplicationRecord

  validates :collection_id, presence: true
  validates :artwork_id, presence: true, uniqueness: { scope: :collection_id }

  belongs_to :collection,
             foreign_key: :collection_id,
             class_name: :Collection

  belongs_to :artwork,
             foreign_key: :artwork_id,
             class_name: :Artwork
end