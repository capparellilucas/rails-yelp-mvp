class ReviewsController < ApplicationController

  def new
    @review = Review.new # Needed to instantiate the form_with
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.save # Will raise ActiveModel::ForbiddenAttributesError

    # redirect_to restaurant_path(@review.restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
