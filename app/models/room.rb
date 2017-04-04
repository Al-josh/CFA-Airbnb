class Room < ApplicationRecord
  belongs_to :user
  has_many :bookings
  
  mount_uploaders :image, ImageUploader
  serialize :image, JSON
end
