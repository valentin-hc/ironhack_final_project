class SurfspotsController < ApplicationController
	skip_before_filter :authenticate_user!
	def index
	end

	def spots
		surfspots = Surfspot.all
		users = User.all
	    unless surfspots
      		render json: {error: "No surfspots"}, status: 400
      		return
    	end
    	render json: {surfspots: surfspots}
	end
	def show
		@surfspot = Surfspot.find(params[:id])
	end

	def new
		unless current_user.admin
			redirect_to root_path
		end
		@surfspot = Surfspot.new
	end
	def create		
	end

	private
	def surfspot_params
		params.require(:surfspot).permit(:name, :country, :area, :description, :type, :longitude, :latitude)
	end
end
