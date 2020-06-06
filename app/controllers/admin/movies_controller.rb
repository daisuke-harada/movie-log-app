class Admin::MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def movie_params
    params.require(:movie).permit(:movie_image, :title, :samary,  :a_movie_released, :show_time)
  end

end
