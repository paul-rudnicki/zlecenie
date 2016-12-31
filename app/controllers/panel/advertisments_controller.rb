class Panel::AdvertismentsController < Panel::ApplicationController
  def new
  	@advertisment = Advertisment.new
  	@categories = Category.all
  	@geolocations = Geolocation.all
  end

  def create
  	advertisment = Advertisment.new(strong_params)
  	advertisment.user_id = session[:user_id]
  	if advertisment.save
  		redirect_to panel_ogloszenia_path(status: 'waiting_mod'), notice: 'Dodano nowe ogłoszenie, któro oczekuję na moderację'
		else
			flash[:alert] = 'Wystąpił problem z dodaniem nowego ogłoszenia'
			render :new
  	end
  end

  def edit
  end

  def update
  end

  private

  def strong_params
  	params.require(:advertisment)
  		.permit(:title, :content, :category_ids, :geolocation_ids, :price, :realization)
  end
end
