class AddUserToMarks < ActiveRecord::Migration[7.0]
  def change
    add_reference :marks, :user, null: false, foreign_key: true
  end
end
