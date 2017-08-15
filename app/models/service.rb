class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :comments

  mount_uploader :photo, PhotoUploader

  validates :title, presence: :true, uniqueness: true
  validates :description, presence: :true
  validates :category, presence: :true
  validates :location, presence: :true
  validates :years_experience, presence: :true
  validates :price, presence: :true
end
