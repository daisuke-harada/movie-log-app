class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :summary
      t.string :movie_image_id

      t.timestamps
    end
  end
end
