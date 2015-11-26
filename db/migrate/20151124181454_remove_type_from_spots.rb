class RemoveTypeFromSpots < ActiveRecord::Migration
  def change
  	remove_column :surfspots, :type
  end
end
