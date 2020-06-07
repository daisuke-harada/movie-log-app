class Admin::MoviesController < ApplicationController
  before_action :set_movies, only: [:show, :edit, :update, :destroy]

  def new
    @movie = Movie.new
    # collection_selectにより選択するジャンルを持ってくる。
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
    @movies = Movie.all
  end

  def show
  end

  def edit
    @genres = Genre.all
  end

  def update
    @movie.update(movie_params)
    redirect_to admin_movie_path(@movie)
  end

  def destroy
    @movie.destroy
    redirect_to admin_movies_path
  end

  private

  def movie_params
    # movieとアソシエーション関係にある。movie_genres、actor,superviser,writerも保存できるようにする。
    params.require(:movie).permit(:movie_image, :title, :summary, :a_movie_released, :show_time,
                                  movie_genres_attributes: [:id, :genre_id, :_destroy],
                                  supervisers_attributes: [:id, :superviser_name, :_destroy],
                                  actors_attributes: [:id, :actor_name, :_destroy],
                                  writers_attributes: [:id, :writer_name, :_destroy])
  end

  def set_movies
    @movie = Movie.find(params[:id])
  end
end
