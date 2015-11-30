class AddElementsToUpdate < ActiveRecord::Migration
  def change
    add_column :updates, :wave_height, :string
   	add_column :updates, :wind, :string
    add_column :updates, :crowds, :string
    add_column :updates, :rating, :string
    add_column :updates, :comment, :string
  end
end
