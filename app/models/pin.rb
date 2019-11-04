class Pin < ApplicationRecord
  has_one :meal
  belongs_to :collection
end
