class Review < ApplicationRecord
  has_many :review_tags
  has_many :tags, through: :review_tags
end
