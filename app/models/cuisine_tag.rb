class CuisineTag < ApplicationRecord

  CUISINE_TAG = ['american', 'chinese', 'french']

  validates :name, inclusion: { in: CUISINE_TAG }

end
