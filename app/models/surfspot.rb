class Surfspot < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "300x300#", :thumb => "100x100#" }, :default_url => "/images/:style/default_image.png"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	has_many :updates
  	has_many :users, through: :updates
end
