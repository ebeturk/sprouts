class AddPlantToMatches < ActiveRecord::Migration[7.0]
  def change
    add_reference :matches, :plant, null: false, foreign_key: true
  end
end
