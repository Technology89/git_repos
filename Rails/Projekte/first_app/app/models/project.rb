class Project < ActiveRecord::Base
	has_many :tasks, dependent: :destroy

	validates :title, length: { minimum: 5, message: "Der Titel muss mindestens 5 Zeichen enthalten!" }
	validate :start_date_cannot_be_in_the_past

	def start_date_cannot_be_in_the_past
	  errors.add(:start_date, "Das Datum muss in der Zukunft liegen!") if start_date.present? && start_date < Date.today
	end
end
