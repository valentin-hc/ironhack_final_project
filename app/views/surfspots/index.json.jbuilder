json.spots @surfspots do |surfspot|
	json.set! :type, "Feature"
	json.set! :geometry do
		json.set! :type, "Point"
		json.set! :coordinates, [surfspot.longitude, surfspot.latitude]
	end 
	json.set! :properties do 
		json.set! :title, surfspot.name
		json.set! :description, surfspot.area
		json.set! :image, surfspot.avatar.url
		json.set! :url, "/surfspots/#{surfspot.id}"
		json.set! "marker-color", '#8DEEEE'
		json.set! "marker-size", 'large'
		json.set! "marker-symbol", 'dam'
	end

	json.set! :info do
		json.set! :id, surfspot.id
		ordered = surfspot.updates.order(updated_at: :desc)
		updates = []
		ordered.each do |update|
			update_time = update.updated_at.strftime('%A, %d %b %Y %l:%M %p')
			update_pics = []
			update.pictures.each do |pic|
				update_pics << pic.image.url(:medium)
			end
			updates << [update, update_pics, update_time]
		end
		json.set! :spotupdates, updates
	end
end

