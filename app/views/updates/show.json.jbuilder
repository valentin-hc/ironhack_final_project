json.set! :modal_info do
	json.set! :update, @update
	json.set! :surfspot, @surfspot
	json.set! :contributor, @user.business_name
	update_pics = []
	@update.pictures.each do |pic|
		update_pics << pic.image.url
	end
	json.set! :pictures, update_pics
	json.set! :pictures_time, @update.pictures_taken_at.strftime('%A, %d %b %Y %l:%M %p')
end