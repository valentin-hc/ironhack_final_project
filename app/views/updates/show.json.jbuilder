json.set! :modal_info do
	json.set! :update, @update
	json.set! :surfspot, @surfspot
	json.set! :contributor do
		json.set! :name, @user.business_name
		json.set! :address, @user.address
		json.set! :city, @user.city
		json.set! :link, "/profiles/#{@user.id}"
	end
	update_pics = []
	@update.pictures.each do |pic|
		update_pics << pic.image.url
	end
	json.set! :pictures, update_pics
	json.set! :pictures_time, @update.pictures_taken_at.strftime('%A, %d %b %Y %l:%M %p')
	json.set! :special do
		json.set! :special, @special[0]
		json.set! :specimg, @special[0].image.url
	end
	
end