# Restaurant Pizza API

## Author: Thomas Kambale

This project is an API for managing restaurants and pizzas, allowing you to create relationships between them through the `RestaurantPizza` model. It provides endpoints to retrieve restaurant and pizza data, create restaurant-pizza associations, and perform CRUD operations on restaurants.

## Getting Started

To get started with the project, follow these steps:

1. Clone the repository to your local machine.
2. Install the necessary dependencies by running `bundle install`.
3. Set up the database by running `rails db:create` and `rails db:migrate`.
4. (Optional) Generate seed data by running `rails db:seed` to populate the database with sample restaurant and pizza records.
5. Start the server by running `rails server`.

## Models

The project implements the following relationships:

- A `Restaurant` has many `Pizza`s through `RestaurantPizza`.
- A `Pizza` has many `Restaurants` through `RestaurantPizza`.
- A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`.

The models and migrations for these relationships have been provided. You can find them in the `app/models` and `db/migrate` directories, respectively.

## Validations

The `RestaurantPizza` model has the following validation:

- `price`: Must be between 1 and 30.

## Routes

The project defines the following routes:

- GET `/restaurants`: Retrieve a list of all restaurants in the format specified.
- GET `/restaurants/:id`: Retrieve detailed information about a specific restaurant, including associated pizzas, in the format specified.
- DELETE `/restaurants/:id`: Delete a restaurant from the database, along with associated restaurant-pizza associations.
- GET `/pizzas`: Retrieve a list of all pizzas in the format specified.
- POST `/restaurant_pizzas`: Create a new restaurant-pizza association by providing the required parameters in the request body.

Please refer to the specific API documentation for detailed information on each endpoint, including the expected request and response formats.

## Testing

You can test the API using tools like curl, Postman, or by writing automated tests using a testing framework like RSpec. The project does not include specific test cases, so feel free to add your own tests to ensure the functionality of the API.

