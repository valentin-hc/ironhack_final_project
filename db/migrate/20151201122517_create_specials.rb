class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
    	t.belongs_to :user, index: true
    	t.string :title, null: false
    	t.string :description
    	t.string :days_applicable
    	t.timestamps null: false
    end
  end
end
