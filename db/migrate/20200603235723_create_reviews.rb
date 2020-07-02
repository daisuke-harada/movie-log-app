class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :movie_id, foreign_key: true
      t.integer :user_id, foreign_key: true
      t.float :rate, default: 0
      t.text :content
      t.boolean :is_spoil, default: false, null: false
      t.integer :favorites_count

      t.timestamps
    end
  end
end
