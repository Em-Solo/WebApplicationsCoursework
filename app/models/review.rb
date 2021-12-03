class Review < ApplicationRecord
  belongs_to :movie
  validates :content, :movie, presence: true
end
