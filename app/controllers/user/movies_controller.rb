class User::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    # movie_review_rate_count = Movie.joins([:reviews]).group(:movie_id).count
    # movie_review_rete_ids
  end

  def show
    @movie = Movie.find(params[:id])
    @reviews = @movie.reviews.includes(:user)
    @review_new = Review.new
    @user = current_user
    if user_signed_in?
      @review = @movie.reviews.find_by(user_id: current_user.id)
    end
  end
end
