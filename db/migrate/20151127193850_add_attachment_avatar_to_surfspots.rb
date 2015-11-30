class AddAttachmentAvatarToSurfspots < ActiveRecord::Migration
  def self.up
    change_table :surfspots do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :surfspots, :avatar
  end
end
