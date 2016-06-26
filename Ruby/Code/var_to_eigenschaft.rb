class Movie
	attr_accessor :title, :rank

	def initialize(ptitle, prank=20)
		@title = ptitle.capitalize
		@rank = prank
	end

	#attr_reader :title
	#attr_writer :title
	#def title
	#	@title
	#end
	#def title=(ptitle)
	#	@title = ptitle
	#end
	def normalized_rank
		@rank / 10
	end
	def thumbs_up
		@rank = @rank + 10
	end
	def thumbs_down
		@rank = @rank - 10
	end
	def to_s
		"Der Film #{@title} hat den Rank: #{normalized_rank}"
	end
end

movie1 = Movie.new("batman", 40)
movie2 = Movie.new("iron man", 60)
movie3 = Movie.new("superman", 80)
movies = [movie1, movie2, movie3]

movies.each do |movie|
	puts movie
end




