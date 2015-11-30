class ProfilesController < ApplicationController
	skip_before_filter :authenticate_user!#, :only => [:index, :businesses, :show_public]
	def index
		@users = User.all
	end
	def show
		@profile = current_user
	end
	def show_public
		@profile = User.find(params[:id])
	end
end
