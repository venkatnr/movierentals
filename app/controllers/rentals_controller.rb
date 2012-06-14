
class RentalsController < ApplicationController

	def new
		@movie = Movie.find(params[:id])
 		@rental = @movie.rentals.build
	end
	def create
		@movie = Movie.find(params[:id])
		@rental = @movie.rentals.build(params[:rental])
	  if @rental.save
		redirect_to new_rental_path(:id => @movie.id)
	  end		
	end
end
