class CreateMovieThirdRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_third_ranks do |t|
      t.integer :review_id, foreign_key: true
      t.integer :user_id, foreign_key: true

      t.timestamps
    end
  end
end
