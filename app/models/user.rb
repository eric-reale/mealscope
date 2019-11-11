class User < ApplicationRecord
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :collections
  has_many :orders

  mount_uploader :avatar, PhotoUploader

  after_create :get_reviews
  after_create :trusted_reviewer_boolean

  def get_reviews
    self.user_reviews = 0
    self.user_reviews.save
  end

  def trusted_reviewer_boolean
    self.trusted_reviewer = false
    self.trusted_reviewer.save
  end

  def user_reviews_count
    self.user_reviews = self.user_reviews.count
  end

  def trusted_reviewer_check
    if self.reviews.count > 10
      self.trusted_reviewer = true
    end
  end
end
