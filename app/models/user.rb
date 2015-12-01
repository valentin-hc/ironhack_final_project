class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300#", :thumb => "100x100#" }, 
  :default_url => "/images/:style/default_image.png",
  :url  => ":s3_domain_url",
  :path => "public/avatars/:id/:style_:basename.:extension",
  :storage => :fog,
  :fog_credentials => {
      provider: 'AWS',
      aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
      aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
  },
  fog_directory: ENV["FOG_DIRECTORY"]
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_attached_file :business_avatar, :styles => { :medium => "300x300#", :thumb => "100x100#" }, :default_url => "/images/:style/default_business.png"
  validates_attachment_content_type :business_avatar, :content_type => /\Aimage\/.*\Z/
  has_many :updates
  has_many :surfspots, through: :updates
  has_many :specials, dependent: :destroy
end
