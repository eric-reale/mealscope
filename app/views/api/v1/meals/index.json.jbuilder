json.array! @meals do |meal|
  json.extract! meal, :id, :name, :description, :price, :average_rating
   json.restaurant meal.restaurant, :id, :name
  # Uncomment if we want to display all the reviews within the index method, or if they need to access Show method (meal by id) in order to get reviews
  json.reviews meal.reviews do |review|
    json.extract! review, :id, :rating, :content
  end

    json.diet_meal_tags meal.diet_meal_tags do |diet|
    json.extract! diet, :id, :diet_tag_id
      # json.diet diet.diet_tag_id, :name
  end

end
