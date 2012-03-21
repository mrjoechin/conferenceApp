class PagesController < ApplicationController

	def home
		@title = "Home"
	end

	def products
		@title = "Products"
	end

	def contact
		@title = "Contact Us"
	end

	def map
		@title = "Conference Information"
	end

end
