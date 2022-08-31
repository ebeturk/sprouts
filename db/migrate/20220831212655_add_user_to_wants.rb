class AddUserToWants < ActiveRecord::Migration[7.0]
  def change
    add_reference :wants, :user, null: false, foreign_key: true
  end
end
