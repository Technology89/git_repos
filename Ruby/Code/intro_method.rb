def movie_listing(title, rank=20)
	"Movie: #{title.capitalize} hat eine Bewertung von #{rank} am #{weekday}"
end	

def weekday
	current_time = Time.new
	current_weekday = current_time.strftime("%A")
end	

puts movie_listing("batman", 50)
puts movie_listing("superman")