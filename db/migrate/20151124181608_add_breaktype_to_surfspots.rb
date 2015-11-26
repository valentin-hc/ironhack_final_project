class AddBreaktypeToSurfspots < ActiveRecord::Migration
  def change
  	add_column :surfspots, :breaktype, :string
  end
end
