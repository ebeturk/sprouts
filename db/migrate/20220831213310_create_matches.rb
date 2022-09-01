class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :user_1, foreign_key: { to_table: :users }
      t.references :user_2, foreign_key: { to_table: :users }
      t.references :plant_1, foreign_key: { to_table: :plants }
      t.references :plant_2, foreign_key: { to_table: :plants }
      t.boolean "exchanged", default: false
      t.timestamps
    end
  end
end
