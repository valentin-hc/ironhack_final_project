json.businesses @users do |user|
	if user.longitude != nil && user.latitude != nil
		json.set! :type, "Feature"
		json.set! :geometry do
			json.set! :type, "Point"
			json.set! :coordinates, [user.longitude, user.latitude]
		end 
		json.set! :properties do 
			json.set! :title, user.business_name
			json.set! :description, user.business_description
			json.set! :image, user.business_avatar.url
			json.set! :url, "/profiles/public/#{user.id}"
			json.set! "marker-color", '#ff8888'
			json.set! "marker-size", 'large'
			case user.business_type
			when 'Restaurant'
				json.set! "marker-symbol",'restaurant'
			when 'Surfshop'
				json.set! "marker-symbol", 'shop'
			when 'Photograph'
				json.set! "marker-symbol", 'camera'
			else
				json.set! "marker-symbol", 'marker'
			end
		end

		json.set! :info do
			json.set! :id, user.id
		end
	end
end

