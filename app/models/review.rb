class Review < ApplicationRecord
  belongs_to :booking

  validates :content, presence: :tue
end
