class Review < ApplicationRecord
  belongs_to :movie
  validates :content, :movie, presence: true

  scope :user_reviews, ->(user) { joins(:movie).where(['user_id = ?', user.id])}
end
