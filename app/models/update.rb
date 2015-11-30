class Update < ActiveRecord::Base
	belongs_to :user
	belongs_to :surfspot
	has_many :pictures, :dependent => :destroy
end
