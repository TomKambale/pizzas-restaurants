class PizzasController < ApplicationController
    def index
      pizzas = Pizza.all
      render json: pizzas
    end
  
    def create
      pizza = Pizza.create(pizza_params)
      render json: pizza, status: :created
    rescue ActiveRecord::RecordInvalid => invalid
      render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
  
    private
  
    def pizza_params
      params.permit(:name, :ingredients)
    end
  end
  