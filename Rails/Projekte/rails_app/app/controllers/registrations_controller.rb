class RegistrationsController < ApplicationController
	before_action :set_event
	before_action :require_signin

	def index
		@registrations = @event.registrations
	end

	def new
		@registration = @event.registrations.new
	end

	def create
		@registration = @event.registrations.new(registration_params)
		@registration.user_id = current_user.id
		if @registration.save
			flash[:notice] = "Erfolgreich gespeichert."
			redirect_to events_path(@event.id), notice: "Die Registrierung wurde gespeichert!"
		else
			render :new, notice: "Fehler beim Speichern!"
		end
	end

	def destroy
		@registration = Registration.find(params[:id])
		@registration.delete
		redirect_to event_registrations_url(@event.id), notice: "Registrierung von #{@registration.user.name} erfolgreich gelöscht!"
	end

	private
		def registration_params
			params.require(:registration).permit(:how_heard, :user_id, :event_id)
		end

		def set_event
			@event = Event.find(params[:event_id])
		end
end