class ReviewsController < ApplicationController
  before_action :set_user, only: [:new, :create]
  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  # is the route not correct?
  # is it a validation from devise that prevents to create a review?

  def create
    @review = Review.new(review_params)
    @review.user = @user
    if @review.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @review.user = @review
    @review.destroy

    redirect_to user_path(@review.user), status: :see_other
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content, :user_id)
  end
end
