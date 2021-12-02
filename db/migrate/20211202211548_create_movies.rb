class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :genre
      t.integer :runtime
      t.date :watch_date
      t.integer :score

      t.timestamps
    end
  end
end
