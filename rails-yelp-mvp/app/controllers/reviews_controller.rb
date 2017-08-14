class ReviewsController < ApplicationController
  # before_action :set_restaurant, only: [:new]

  # def new
  #   @review = Review.new
  # end

  def create
    review_params = params.require(:review).permit(:content, :rating)
    @review = Review.new(review_params)
    @review.restaurant = set_restaurant
    if @review.save
      redirect_to restaurant_path(params[:restaurant_id])
    else
      render "restaurants/show"
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
