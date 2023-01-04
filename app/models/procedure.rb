class Procedure < ApplicationRecord
  belongs_to :review, optional: true
end
