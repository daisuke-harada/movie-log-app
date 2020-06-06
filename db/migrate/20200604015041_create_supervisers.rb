class CreateSupervisers < ActiveRecord::Migration[5.2]
  def change
    create_table :supervisers do |t|
      t.references :movie, foreign_key: true
      t.string :superviser_name

      t.timestamps
    end
  end
end
