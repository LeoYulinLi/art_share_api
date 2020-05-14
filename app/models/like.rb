class Like < ApplicationRecord

  validates :user_id, presence: true
  validates :content_id, presence: true
  validates :content_type, presence: true

  belongs_to :user,
             foreign_key: :user_id,
             class_name: 'User'

  belongs_to :content,
             polymorphic: true
end
