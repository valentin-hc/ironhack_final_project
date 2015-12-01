class AddChosenSpecialToUpdate < ActiveRecord::Migration
  def change
    add_column :updates, :choose_special, :string
  end
end
