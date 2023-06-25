class RestaurantsController < ApplicationController
    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def destroy
        restaurant = Restaurant.find_by(id: params[:id])
            restaurant.destroy
            head :no_content
    end

    private
    def restaurant_params
        params.permit(:name, :address )
    end

end
