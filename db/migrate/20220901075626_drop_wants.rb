class DropWants < ActiveRecord::Migration[7.0]
  def change
    drop_table :wants
  end
end
