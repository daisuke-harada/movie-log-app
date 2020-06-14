class User::ReviewsController < ApplicationController
  def edit
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def update
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build(review_params)
    @review.user_id = current_user.id
    @review.update
    redirect_to user_movie_path(@movie)
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build(params[:movie_id][:review_id])
    @review.user_id = current_user.id
    @review.save
    redirect_to user_movie_path(@movie)
  end

  def destroy
  end

  private
  def review_params
    params.require(:review).permit(:movie_id, :user_id, :rate, :content, :is_spoil)
  end
end
