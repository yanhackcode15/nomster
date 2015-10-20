class PlacesController < ApplicationController
	def index
		@places = Place.page params[:page]
	end

	def new
		@place = Place.new
		# render :new
	end

	def create
		@place = Place.new(place_params)
		if @place.save
			redirect_to root_path
			# render :new
		else
			render :new
		end
			
	
	end

	private

	def place_params
		params.require(:place).permit(:name, :description, :address)
	end

end
