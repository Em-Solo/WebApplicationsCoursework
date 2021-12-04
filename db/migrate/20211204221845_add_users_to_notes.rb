class AddUsersToNotes < ActiveRecord::Migration[5.2]
  def up
    add_reference :movies, :user, index: true
    Movie.reset_column_information
    user = User.first

    Movie.all.each do |movie|
      movie.user_id = user.id
      movie.save!
    end

    change_column_null :movies, :user_id, false
    add_foreign_key :movies, :users
  end

  def down
    remove_foreign_key :movies, :users
    remove_reference :movies, :user, index: true
  end
end
