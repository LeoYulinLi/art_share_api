class Artwork < ApplicationRecord

  validates :artist_id, uniqueness: { scope: :title }
  validates :title, presence: true
  validates :artist_id, presence: true
  validates :image_url, presence: true

  belongs_to :artist,
             foreign_key: :artist_id,
             class_name: 'User'

end
