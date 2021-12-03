class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :movie, foreign_key: true, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
