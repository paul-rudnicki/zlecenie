class Panel::ApplicationController < ApplicationController
	layout 'panel'

	before_action :authorize

	helper_method :current_user, :logged_in?

	def current_user
		@user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def authorize
		unless current_user
			redirect_to new_panel_session_path, alert: "Prosimy o zalgowanie się"
		end
	end

	def logged_in?
		current_user != nil
	end

end
