json.array! @meals do |meal|
  json.extract! meal, :id, :name, :description, :price, :average_rating, :restaurant_id
  # json.reviews meal.reviews do |review|
  #   json.extract! review, :id, :rating, :content
  # end
  # Uncomment if we want to display all the reviews within the index method, or if they need to access Show method (meal by id) in order to get reviews
   # json.restaurant meal.restaurant do |restaurant|
   #   json.extract! restaurant, :id, :name
   # end
end
