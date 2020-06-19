class User::MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    if user_signed_in?
      @review = current_user.reviews.find_by(params[movie_id: @movie])
    end
  end
end
