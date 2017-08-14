class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service
  has_many :reviews

  validates :date_start, presence: :true
  validates :date_end, presence: :true
  validates :status, presence: :true
end
