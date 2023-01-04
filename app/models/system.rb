class System < ApplicationRecord
  belongs_to :review, optional: true
end
