# Create Users
user1 = User.create(name: "User 1", email: "user1@email.com", password: "123456")
user2 = User.create(name: "User 2", email: "user2@email.com", password: "123456")

# Create Foods
food1 = Food.create(name: "apple", measurement_unit: "Kg", price: 1.50, quantity: 2, user_id: 1)
food2 = Food.create(name: "orange", measurement_unit: "Gr", price: 2.50, quantity: 4, user_id: 2)

# Create Recipes
recipe1 = Recipe.create(name: "Apple Juice", preparation_time: 30, cooking_time: 10, description: "Cut apples, squeeze, mix with water and sugar to taste.", public: false, user_id: 1)
recipe2 = Recipe.create(name: "Orange Juice", preparation_time: 60, cooking_time: 20, description: "Cut oranges, squeeze, mix with water and sugar to taste.", public: false, user_id: 2)