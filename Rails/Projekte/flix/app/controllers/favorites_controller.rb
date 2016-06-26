class FavoritesController < ApplicationController
	before_action :require_signin
	before_action :set_movie

	def create
		@movie.fans << current_user
		respond_to do | format |
			format.html { redirect_to @movie, notice: "Super, kannst dir eine anstecken" }
			format.js
		end		
	end

	def destroy
		favorite = current_user.favorites.find(params[:id])
		favorite.destroy
		redirect_to @movie, notice: "Erfolgreich Unliked!"
	end

	private
		def set_movie
			@movie = Movie.find(params[:movie_id])		
		end

end
