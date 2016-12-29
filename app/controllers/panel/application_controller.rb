class Panel::ApplicationController < ApplicationController
	layout 'panel'

	before_action :authorize

	def current_user
		@user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def authorize
		unless current_user
			redirect_to new_panel_session_path, alert: "Prosimy o zalgowanie się"
		end
		
	end


end
