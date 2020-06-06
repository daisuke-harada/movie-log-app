class Admin::MoviesController < ApplicationController
  before_action :set_movies, only: [:show, :edit, :update, :destroy]

  def new
    @movie = Movie.new
    @genres = Genre.all
    @movie.movie_genres.build
    @movie.supervisers.build
    @movie.actors.build
    @movie.writers.build
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to admin_movie_path(@movie)
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def movie_params
    # movieとアソシエーション関係にある。movie_genres、actor,superviser,writerも保存できるようにする。
    params.require(:movie).permit(:movie_image, :title, :summary, :a_movie_released, :show_time,
                                  movie_genres_attributes: [:genre_id],
                                  supervisers_attributes: [:superviser_name],
                                  actors_attributes: [:actor_name],
                                  writers_attributes: [:writer_name])
    end

  def set_movies
    @movie = Movie.find(params[:id])
  end
end
