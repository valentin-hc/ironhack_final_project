class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
    	t.belongs_to :user, index: true
    	t.string :title, null: false
    	t.timestamps null: false
    end
  end
end
