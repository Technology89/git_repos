class Movie < ActiveRecord::Base
	has_many :reviews, dependent: :destroy
	has_many :favorites, dependent: :destroy
	has_many :fans, through: :favorites, source: :user

	validates :title, :released_on, :duration,  presence: { message: "Bitte alle Felder ausfüllen!" }
	validates :description, length: { minimum: 25, message: "Die Beschreibung muss mindestens 25 Zeichen enthalten!" }
	validates :total_gross, numericality: { only_integer: true, message: "Die Einnahmen müssen Ganzzahlig sein!", greater_than_or_equal_to: 0 }
	validates :poster_image_file, allow_blank: true, format:  { with: %r{\.(gif|jpg|jpeg|png)}i, message: "Bitte *.gif, *.jpg, *.jpeg oder *.png verwenden!"}
	validates :rating, inclusion: { in: %w(G PG PG-13 R NC-17),
    message: 'Bitte geben sie eines der folgenden Ratings ein: "G, PG, PG-13, R oder NC-17"' }

	def null

	end 

	def flop?
		total_gross.blank? || total_gross < 50000000  
	end

	def self.released
		where("released_on <= ?", Time.now).order("released_on")
	end
end
