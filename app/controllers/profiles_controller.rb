class ProfilesController < ApplicationController
	skip_before_filter :authenticate_user!, :only => [:index, :businesses]
	def index
		@users = User.all
	end
	def businesses
		users = User.all
		businesses = []
		users.each do |user|
			business = {}
			business[:id] = user.id
			business[:name] = user.business_name
			business[:address] = user.address
			business[:city] = user.city
			business[:zip_code] = user.zip_code
			business[:business_type] = user.business_type
			business[:description] = user.business_description
			business[:link] = user.website_link
			business[:longitude] = user.longitude
			business[:latitude] = user.latitude
			business[:image_url] = user.avatar.url

			businesses << business
		end
		# binding.pry
		render json: {businesses: businesses}
	end
	def show
		@profile = current_user
	end
end
