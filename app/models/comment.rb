class Comment < ApplicationRecord

  validates :user_id, presence: true
  validates :artwork_id, presence: true

  belongs_to :author,
             foreign_key: :user_id,
             class_name: 'User'

  belongs_to :artwork,
             foreign_key: :artwork_id,
             class_name: 'Artwork'

  has_many :likes,
           as: :content
end
