class User < ApplicationRecord
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :reviews
  has_many :collections
  has_many :orders

  has_many :visits, class_name: "Ahoy::Visit"

  mount_uploader :avatar, PhotoUploader

  def user_reviews_count
    self.user_reviews = self.user_reviews.count
  end

  def trusted_reviewer_check
    if self.reviews.count > 10
      self.trusted_reviewer = true
    end
  end
end
