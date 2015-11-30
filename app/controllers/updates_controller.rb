class UpdatesController < ApplicationController
	skip_before_filter :authenticate_user!, :only => [:show]
	def new
		@surfspot = Surfspot.find(params[:surfspot_id])
		# binding.pry
		@update = Update.new
	end
	def create
		@surfspot = Surfspot.find(params[:surfspot_id])
		@update = @surfspot.updates.new(update_params)
		if @update.save
			if params[:images]
				params[:images].each { |image|
					@update.pictures.create(image: image)
				}
			end
			@update.update_attribute(:user_id, current_user.id)
		    redirect_to root_path
		else
		    redirect_to new_surfspot_update_path(params[:surfspot_id])
		end
	end
	def show
		@update = Update.find(params[:id])
		@surfspot = Surfspot.find (@update.surfspot_id)
		@user = User.find(@update.user_id)
	end

	private
	def update_params
		params.require(:update).permit(:pictures_taken_at, :wave_height, :wind, :crowds, :rating, :comment)
	end
end
