class CuisineTag < ApplicationRecord

  CUISINE_TAG = ['Algerian', 'American', 'Belgian', 'Brazilian', 'British', 'Cajun', 'Canadian', 'Caribbean', 'Chinese', 'Cuban', 'Egyptian', 'French', 'German', 'Greek', 'Hawaiian', 'Haitian', 'Indian', 'Irish', 'Italian', 'Japanese', 'Jewish', 'Kenyan', 'Korean', 'Latvian', 'Lebanese', 'Libyan', 'Mediterranean', 'Mexican', 'Mormon', 'Moroccan', 'Nigerian', 'Peruvian', 'Polish', 'Portuguese', 'Salvadorian', 'Russian', 'Spanish', 'Scottish', 'Swedish', 'Tahitian', 'Thai', 'Tibetan', 'Turkish', 'Welsh', 'Vietnamese']

  validates :name, inclusion: { in: CUISINE_TAG }
  has_many :cuisine_meal_tags

  has_many :meals, through: :cuisine_meal_tags

end
