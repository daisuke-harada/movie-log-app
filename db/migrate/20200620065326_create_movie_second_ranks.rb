class CreateMovieSecondRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_second_ranks do |t|
      t.integer :review_id, foreign_key: true
      t.integer :user_id, foreign_key: true

      t.timestamps
    end
  end
end
