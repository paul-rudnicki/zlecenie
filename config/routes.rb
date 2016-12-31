Rails.application.routes.draw do

  root 'pages#home'

  get '/logowanie' => 'panel/sessions#new'
  get '/wyloguj' => 'panel/sessions#destroy'

  get '/panel' => 'panel/dashboard#cockpit'
  get 'panel/ogloszenia' => 'panel/dashboard#advertisments'
  get 'panel/oferty' => 'panel/dashboard#offers'
  get 'panel/profil' => 'panel/dashboard#profil'
  get 'panel/ustawienia' => 'panel/dashboard#settings'
  get 'panel/weryfikacja' => 'panel/dashboard#verify'
  get 'panel/dodaj-ogloszenie' => 'panel/advertisments#new'


  namespace :panel do
    resources :dashboard, only: [:cockpit, :advertisments, :offers, :profile, :settings, :verify]
    resources :sessions, only: [:new, :create, :destroy]
    resources :advertisments, only: [:new, :create, :edit, :update]
  end

end
