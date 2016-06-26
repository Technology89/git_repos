module MoviesHelper
	def image_for(movie)
		if movie.poster_image_file.blank?
			image_tag("dummy.jpg", height: '300')
		else
			image_tag(movie.poster_image_file, width: '300', crop: :limit)
		end
	end
end
