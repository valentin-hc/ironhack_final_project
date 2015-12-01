class SpecialsController < ApplicationController
	skip_before_filter :authenticate_user!, :only => [:show]
	def new
		@special = Avertisement.new
	end
	def create
		@special = current_user.specials.new(special_params)
		if @special.save
			redirect_to profile_path(current_user)
		end
	end
	def show
	end
	private
	def special_params
		params.require(:special).permit(:title, :description, :image, :days_applicable)
	end
end
