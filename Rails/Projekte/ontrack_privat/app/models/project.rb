class Project < ActiveRecord::Base
	has_many :validations

	def get_average_ranking
		validations.average(:ranking)
	end	
end
