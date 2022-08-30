class CreateInterests < ActiveRecord::Migration[7.0]
  def change
    create_table :interests do |t|
      t.boolean :match, default: false
      t.references :plant_interest, foreign_key: { to_table: :plants }
      t.references :plant_exchange, foreign_key: { to_table: :plants }
      t.references :user_interest, foreign_key: { to_table: :users }
      t.references :user_exchange, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end


# https://stackoverflow.com/questions/40210736/referencing-a-table-twice-in-rails-postgres
