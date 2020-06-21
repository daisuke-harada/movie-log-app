class CreateMovieRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_ranks do |t|
      t.integer :review_id, foreign_key: true
      t.integer :user_id, foreign_key: true
      t.integer :rank_status, default: 0
      t.timestamps
    end
  end
end
