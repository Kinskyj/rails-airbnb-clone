class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service
  has_many :reviews, :dependent => :destroy

  validates :date_start, presence: :true
  validates :nb_hour, presence: :true
  validates :status, presence: :true
end
