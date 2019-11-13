class CuisineTag < ApplicationRecord

  CUISINE_TAG = ['American', 'Brazilian', 'British', 'Caribbean', 'Chinese', 'French', 'Greek', 'Indian', 'Italian', 'Japanese', 'Korean','Lebanese', 'Mexican', 'Moroccan', 'Nigerian', 'Peruvian', 'Spanish', 'Thai', 'Turkish','Vietnamese' ]

  validates :name, inclusion: { in: CUISINE_TAG }
  has_many :cuisine_meal_tags

  has_many :meals, through: :cuisine_meal_tags

end
