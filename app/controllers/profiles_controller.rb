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
			# business_marker = business_icon(user.business_type)
			business[:id] = user.id
			business[:name] = user.business_name
			business[:address] = user.address
			business[:city] = user.city
			business[:zip_code] = user.zip_code
			business[:business_type] = business_icon(user.business_type)
			business[:description] = user.business_description
			business[:link] = user.website_link
			business[:longitude] = user.longitude
			business[:latitude] = user.latitude
			business[:image_url] = user.business_avatar.url

			businesses << business
		end
		# binding.pry
		render json: {businesses: businesses}
	end
	def business_icon(biz_type)
		case biz_type
		when 'Restaurant'
			'restaurant'
		when 'Surfshop'
			'shop'
		when 'Photograph'
			'camera'
		else
			'marker'
		end
	end

	def show
		@profile = current_user
	end
end
