class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings, :dependent => :destroy
  has_many :comments, :dependent => :destroy

  mount_uploader :photo, PhotoUploader
  geocoded_by :location

  validates :title, presence: :true, uniqueness: true
  validates :description, presence: :true
  validates :category, presence: :true
  validates :location, presence: :true
  validates :years_experience, presence: :true
  validates :price, presence: :true

  after_validation :geocode, if: :location_changed?

  def self.search(search)
    if search
      # where(['location LIKE ?', "%#{search}%"])
      near("#{search}", 50)
    else
      all
    end
  end

end
