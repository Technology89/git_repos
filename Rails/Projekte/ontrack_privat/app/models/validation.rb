class Validation < ActiveRecord::Base
  	belongs_to :project

  	validates :comment, length: { minimum: 15, message: "Die Beschreibung muss mindestens 15 Zeichen enthalten!" }
	validates :username, :ranking, presence: { message: "Bitte alle Felder ausfüllen!" }

	RANKING_ITEMS = { "Sehr schlecht" => "1", "Schlecht" => "2", "Okay" => "3", "Gut" => "4", "Sehr gut" => "5"}
end
