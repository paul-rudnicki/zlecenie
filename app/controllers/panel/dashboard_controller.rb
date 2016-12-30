class Panel::DashboardController < Panel::ApplicationController
  def cockpit
  	@active_advertisments_count = active_advertisments.count
  	@wating_advertisments_count = waiting_winner_advertisments.count
  	@ended_advertisments_count = ended_advertisments.count
  end

  def advertisments
  	if params[:status].present?
  		case params[:status]
  		when 'waiting_winner'
		  	@advertisments = waiting_winner_advertisments.page(params[:page]).per(5)
  		when 'waiting_mod'
		  	@advertisments = waiting_moderation_advertisments.page(params[:page]).per(5)
  		when 'ended'
		  	@advertisments = ended_advertisments.page(params[:page]).per(5)
	  	end
  	else 
	  	@advertisments = active_advertisments.page(params[:page]).per(5)
	  end
  end

  def offers
  	if params[:status].present?

		else
			@advertisments = Advertisment.joins(:offers).where(offers: {user_id: session[:user_id]})
  	end
  end

  protected

  def waiting_moderation_advertisments
  	Advertisment.where(status: false)
	  		.where(user_id: session[:user_id])
  end

  def active_advertisments
  	Advertisment.where(status: true).where(closed: false)
	  		.where(user_id: session[:user_id])
  end

  def waiting_winner_advertisments
  	Advertisment.where(closed: true).where(winner: nil)
		  		.where(user_id: session[:user_id])
  end

  def ended_advertisments
  	Advertisment.where(closed: true).where.not(winner: nil)
		  		.where(user_id: session[:user_id])
  end
end
