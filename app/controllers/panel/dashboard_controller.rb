class Panel::DashboardController < Panel::ApplicationController
  def cockpit
  	@user = User.find(session[:user_id])
  end

  def advertisments
  	
  end
end
