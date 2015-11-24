class AddElementsToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :username, :string
    add_column :users, :business_name, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :zip_code, :string
    add_column :users, :business_description, :string
    add_column :users, :business_type, :string
    add_column :users, :website_link, :string
    add_column :users, :longitude, :decimal, {:precision=>10, :scale=>6}
    add_column :users, :latitude, :decimal, {:precision=>10, :scale=>6}
  end
end
