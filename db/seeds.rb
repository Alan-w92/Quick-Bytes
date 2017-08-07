require 'faker'

User.create( first_name: "Jack", last_name: "Sparrow", email: "jacks@gmail.com", password: 123456)

5.times do
  List.create(
    user_id: 1,
    recipe_name: Faker::Dessert.variety,
    ingredient: Faker::Food.ingredient
  )
end

2.times do
  Comment.create(
    list_id: 1,
    user_id: 1,
    description: Faker::Movie.quote
  )
end

2.times do
  Comment.create(
    list_id: 2,
    user_id: 1,
    description: Faker::Movie.quote
  )
end

2.times do
  Comment.create(
    list_id: 3,
    user_id: 1,
    description: Faker::Movie.quote
  )
end

2.times do
  Comment.create(
    list_id: 4,
    user_id: 1,
    description: Faker::Movie.quote
  )
end

2.times do
  Comment.create(
    list_id: 5,
    user_id: 1,
    description: Faker::Movie.quote
  )
end
