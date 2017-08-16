class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service
  has_many :reviews

  validates :date_start, presence: :true
  validates :nb_hour, presence: :true
  validates :status, presence: :true
end
