class CreateSurfspots < ActiveRecord::Migration
  def change
    create_table :surfspots do |t|
    	t.string :name, null: false
    	t.string :country
    	t.string :area
    	t.string :description
    	t.string :type
    	t.decimal :longitude, {:precision=>10, :scale=>6}
    	t.decimal :latitude, {:precision=>10, :scale=>6}
    	t.timestamps null: false
    end
  end
end
