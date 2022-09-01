class CreateMarks < ActiveRecord::Migration[7.0]
  def change
    create_table :marks do |t|
      t.references :user, foreign_key: { to_table: :users }
      t.references :plant, foreign_key: { to_table: :plants }
      t.timestamps
    end
  end
end
