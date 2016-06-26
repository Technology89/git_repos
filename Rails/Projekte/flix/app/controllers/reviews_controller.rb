class ReviewsController < ApplicationController
	before_action :set_movie
	before_action :require_signin

	def index
		@reviews = @movie.reviews
	end

	def new
		@review = @movie.reviews.new
	end

	def show
		@review = Review.find(params[:id])
	end

	def create
		@review = @movie.reviews.new(reviews_params)
		@review.user_id = current_user.id 
		if @review.save
			flash[:notice] = "Erfolgreich gespeichert."
			redirect_to movies_path(@movie.id), notice: "Die Review wurde gespeichert!"
		else
			render :new, notice: "Fehler beim Speichern!"
		end
	end

	def edit
		@review = Review.find(params[:id])
	end

	def update
		@review = Review.find(params[:id])
		if @review.update(reviews_params)	
			flash[:notice] = "Update erfolgreich :)"	
			redirect_to movie_path(@movie.id)
		else
			flash[:alert] = "Leider ist etwas schief gegangen :("
			render :edit
		end
		
	end



	def destroy
		@review = Review.find(params[:id])
		@review.destroy
		redirect_to movie_reviews_url(@movie.id), notice: "Review von #{@review.name} erfolgreich gelöscht"
	end

	private
		
		def set_movie
			@movie = Movie.find(params[:movie_id])
		end
		def reviews_params
			params.require(:review).permit(:name, :stars, :comment)
		end
		
end
