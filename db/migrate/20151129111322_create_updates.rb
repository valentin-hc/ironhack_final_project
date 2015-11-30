class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :surfspot, index: true
    	t.datetime :pictures_taken_at
    	t.timestamps null: false
    end
  end
end
