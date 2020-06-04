class CreateSupervisers < ActiveRecord::Migration[5.2]
  def change
    create_table :supervisers do |t|
      t.references :movie, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
