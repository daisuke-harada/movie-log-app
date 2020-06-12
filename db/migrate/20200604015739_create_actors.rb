class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.integer :movie_id, foreign_key: true
      t.string :actor_name

      t.timestamps
    end
  end
end
