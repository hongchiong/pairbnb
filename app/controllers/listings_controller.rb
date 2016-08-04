class ListingsController < ApplicationController
	
	def new
		@new_listing = Listing.new
	end

	def index
		@listings = Listing.all
	end

	def create
		@new_listing = current_user.listings.new(listing_params.slice(:title))
		@new_listing.tag_list.add(listing_params.select{|key,hash| hash["1"]}.keys.join(","))
		@new_listing.save
		redirect_to listings_path
	end

	private

	def listing_params
		params.require(:listing).permit(:title, :wifi, :shower, :tv)
	end
end
