class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :day
      t.text :note
      t.integer :points
      t.integer :max_points
      t.integer :mark
      t.references :subject

      t.timestamps null: false
    end
  end
end
