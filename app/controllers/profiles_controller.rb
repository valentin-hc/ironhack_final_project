class ProfilesController < ApplicationController
	skip_before_filter :authenticate_user!, :only => [:index]
	def index
		@users = User.all
	end
	def show
		@profile = current_user
	end
end
