module ValidationsHelper
	def create_text(validation)
		Validation::RANKING_ITEMS.key(validation.ranking.to_s)
	end

	def show_stars(validation)
		str = ""						
		for i in 1..5
			if i <= validation.ranking then
				str += image_tag "small_full_star.gif", size: "20x20"
			else
				str += image_tag "small_empty_star.gif", size: "20x20"
			end
		end
		str.html_safe
	end

	def create_ranking(project)
		str = ""
		for i in 1..5
			if (i-0.25) <= project.get_average_ranking then
				str += image_tag "small_full_star.gif", size: "20x20"
			elsif ((i-0.75) < project.get_average_ranking && project.get_average_ranking < (i-0.25))
				str += image_tag "small_half_star.gif", size: "20x20"
			else
				str += image_tag "small_empty_star.gif", size: "20x20"
			end
		end
		str.html_safe	
	end
end
