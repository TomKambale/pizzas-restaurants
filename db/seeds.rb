# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Seed data for Pizzas
pizza_data = [
  { name: "Margherita", ingredients: "Tomato, Mozzarella, Basil" },
  { name: "Pepperoni", ingredients: "Tomato, Mozzarella, Pepperoni" },
  { name: "Hawaiian", ingredients: "Tomato, Mozzarella, Ham, Pineapple" },
  # Add more pizza records if needed
]

pizzas = Pizza.create(pizza_data)

# Seed data for Restaurants
restaurant_data = [
  { name: "Pizza Place 1", address: "123 Main St" },
  { name: "Pizza Place 2", address: "456 Elm St" },
  { name: "Pizza Place 3", address: "789 Oak St" },
  # Add more restaurant records if needed
]

restaurants = Restaurant.create(restaurant_data)

# Seed data for RestaurantPizzas
restaurant_pizza_data = [
  { price: 10, pizza: pizzas[0], restaurant: restaurants[0] },
  { price: 12, pizza: pizzas[1], restaurant: restaurants[1] },
  { price: 15, pizza: pizzas[2], restaurant: restaurants[2] },
  # Add more restaurant_pizza records if needed
]

RestaurantPizza.create(restaurant_pizza_data)
