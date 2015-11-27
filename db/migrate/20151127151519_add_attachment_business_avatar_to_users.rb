class AddAttachmentBusinessAvatarToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :business_avatar
    end
  end

  def self.down
    remove_attachment :users, :business_avatar
  end
end
