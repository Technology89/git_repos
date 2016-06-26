class MoviesController < ApplicationController
before_action :set_movie, only: [:show, :edit, :update, :destroy]
before_action :require_signin , except: [:index]
before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]


	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
		@reviews = Review.where(params[:id])
		@fans = @movie.fans
		if current_user
			@current_fan = current_user.favorites.find_by(movie_id: @movie.id)
		end
	end
	
	def new
		@movie = Movie.new
	end

	def create
		permitted_params = params.require(:movie).permit(:title, :released_on, :description, :rating, :total_gross)
		@movie = Movie.new(movie_params)
		if @movie.save
			flash[:notice] = "Eintrag erfolgreich erstellt :)"
			redirect_to movies_url
		else
			flash[:alert] = "Leider ist etwas schief gegangen :("
			render :new
		end
	end

	def edit
	end

	def update
		if @movie.update(movie_params)	
			flash[:notice] = "Update erfolgreich :)"	
			redirect_to movies_url
		else
			flash[:alert] = "Leider ist etwas schief gegangen :("
			render :edit
		end
	end

	def destroy
		@movie.destroy
		redirect_to movies_url
	end

	private
		def movie_params
			params.require(:movie).permit(:title, :released_on, :description, :rating, :total_gross, :poster_image_file, :cast, :director, :duration)
		end

		def set_movie
			@movie = Movie.find(params[:id])
		end
end
