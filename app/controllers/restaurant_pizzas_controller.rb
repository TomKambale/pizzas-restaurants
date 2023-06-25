class RestaurantPizzasController < ApplicationController
    def create
      restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
      render json: restaurant_pizza, status: :created
    rescue ActiveRecord::RecordInvalid => invalid
      render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
  
    private
  
    def restaurant_pizza_params
      params.permit(:price, :pizza_id, :restaurant_id)
    end
  end
  