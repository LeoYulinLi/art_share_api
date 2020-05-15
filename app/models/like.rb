class Like < ApplicationRecord

  validates :user_id, presence: true
  validates :content_id, presence: true
  validates :content_type, presence: true

  validates :user_id, uniqueness: { scope: [:content_id, :content_type] }

  belongs_to :user,
             foreign_key: :user_id,
             class_name: 'User'

  belongs_to :content,
             polymorphic: true
end
