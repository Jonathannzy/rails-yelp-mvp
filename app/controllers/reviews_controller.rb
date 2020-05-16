class ReviewsController < ApplicationController

  def new
    @reviewed_restaurant = Restaurant.find(params[:restaurant_id])
    @new_review = @reviewed_restaurant.reviews.build

  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
