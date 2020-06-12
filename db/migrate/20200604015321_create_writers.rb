class CreateWriters < ActiveRecord::Migration[5.2]
  def change
    create_table :writers do |t|
      t.integer :movie_id, foreign_key: true
      t.string :writer_name

      t.timestamps
    end
  end
end
