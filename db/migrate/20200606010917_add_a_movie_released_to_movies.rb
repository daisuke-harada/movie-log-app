class AddAMovieReleasedToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :a_movie_released, :string
    add_column :movies, :show_time, :string
  end
end
