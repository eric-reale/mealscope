json.array! @meals do |meal|
  json.extract! meal, :id, :name, :description, :price, :average_rating
   json.restaurant meal.restaurant, :id, :name
  # Uncomment if we want to display all the reviews within the index method, or if they need to access Show method (meal by id) in order to get reviews
  json.reviews meal.reviews do |review|
    json.extract! review, :id, :rating, :content
  end

  json.diet_meal_tags meal.diet_meal_tags do |diet|
    json.extract! diet # :id, :diet_tag_id
      json.extract! diet.diet_tag, :name
  end

  json.cuisine_meal_tags meal.cuisine_meal_tags do |cuisine|
    json.extract! cuisine # :id, :diet_tag_id
      json.extract! cuisine.cuisine_tag, :name
  end

  json.meal_type_tags meal.meal_type_tags do |type|
    json.extract! type # :id, :diet_tag_id
      json.extract! type.meal_type, :name
  end
end
