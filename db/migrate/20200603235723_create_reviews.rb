class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :movie_id, foreign_key: true
      t.integer :user_id, foreign_key: true
      t.float :rate, null: false, default: 0
      t.boolean :is_spoil

      t.timestamps
    end
  end
end
