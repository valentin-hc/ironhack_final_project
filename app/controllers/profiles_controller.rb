class ProfilesController < ApplicationController
	skip_before_filter :authenticate_user!, :only => [:index, :businesses, :show_public]
	def index
		@users = User.all
	end
	def show
		@profile = User.find_by(id: params[:id])
		@special = Special.new
		@specials = @profile.specials
		@updates = @profile.updates.order(updated_at: :desc)
	end
end
