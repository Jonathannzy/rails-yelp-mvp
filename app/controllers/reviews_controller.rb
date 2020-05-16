class ReviewsController < ApplicationController

  def new
    @reviewed_restaurant = Restaurant.find(params[:restaurant_id])
    @new_review = @reviewed_restaurant.reviews.build

  end

  def create
  end

end
