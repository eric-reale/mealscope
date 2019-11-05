class Collection < ApplicationRecord
  belongs_to :user
  has_many :pins, dependent: :destroy
  has_many :meals, through: :pins

  validates :name, presence: true
end
