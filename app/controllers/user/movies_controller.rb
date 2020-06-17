class User::MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @review = current_user.reviews.find_by(params[movie_id: @movie])
  end
end
