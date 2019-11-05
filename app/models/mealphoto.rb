class Mealphoto < ApplicationRecord
  belongs_to :meal

  mount_uploader :photo, PhotoUploader
end
