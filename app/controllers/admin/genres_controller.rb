class Admin::GenresController < ApplicationController
  before_action :set_genres, only: [:edit, :update, :destroy]
   before_action :authenticate_member!

  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to admin_genres_path
    else
      @genres = Genre.all
      render :index
    end
  end

  def edit
  end

  def update
    if @genre.update(genre_params)
      redirect_to admin_genres_path
    else
      render :edit
    end
  end

  def destroy
    if @genre.destroy
      redirect_to admin_genres_path
    else
      render :edit
    end
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def set_genres
    @genre = Genre.find(params[:id])
  end
end
