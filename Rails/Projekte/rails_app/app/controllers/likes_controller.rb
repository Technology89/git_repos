class LikesController < ApplicationController
	before_action :require_signin
	before_action :set_event

	def create
		@event.likers << current_user
		respond_to do | format |
			format.html { redirect_to @event, notice: "Super, kannst dir eine anstecken" }
			format.js
		end		
	end

	def destroy
		like = current_user.likes.find(params[:id])
		like.destroy
		redirect_to @event, notice: "Erfolgreich Unliked!"
	end


	private
		def set_event
			@event = Event.find(params[:event_id])		
		end
end
