Rails.application.routes.draw do
 
  resources :articles       
  resources :teams          #Teams used in the games shown on the homepage
  resources :games          #Games shown on the homepage
  resources :sponsors       #Sponsors shown on the bottom ov nearly every page
  resources :vcr_teams      #All teams
  resources :vcr_games      #Games of all vcr teams
  resources :members        #Members of Voetbalclub Rinsumageest
  resources :content_pages  #Page's shown at "De Club"
  resources :users          #Administrators
  resources :groups         #Administrator roles

  resources :sessions, only: [:new, :create, :destroy]

  get 'logout' => 'sessions#destroy', :as => 'log_out'
  get 'login' => 'sessions#new', :as => 'log_in'
 
  root 'welcome#index'
end
