class AddPlantToMarks < ActiveRecord::Migration[7.0]
  def change
    add_reference :marks, :plant, null: false, foreign_key: true
  end
end
