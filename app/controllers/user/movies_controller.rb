class User::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    # movie_review_rate_count = Movie.joins([:reviews]).group(:movie_id).count
    # movie_review_rete_ids
  end

  def show
    @movie = Movie.find(params[:id])
    if user_signed_in?
      @review = current_user.reviews.find_by(params[movie_id: @movie])
    end
  end
end
