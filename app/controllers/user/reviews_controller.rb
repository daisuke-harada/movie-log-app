class User::ReviewsController < ApplicationController
  def edit
    @review = Review.find(params[:id])
  end

  def show
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])
    @comments = @review.comments.all
  end

  def update
    @movie = Movie.find(params[:movie_id])
    reviews = Review.find(params[:id])
    @review = @movie.reviews.find_by(movie_id: @movie.id, id: reviews.id)
    @review.user_id = current_user.id
    @review.update(review_params)
    redirect_to user_movie_path(@movie)
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build(review_params)
    @review.user_id = current_user.id
    @review.save
    redirect_to user_movie_path(@movie)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def review_params
    params.require(:review).permit(:id, :movie_id, :user_id, :rate, :content, :is_spoil)
  end
end
