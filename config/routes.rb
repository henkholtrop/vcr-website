Rails.application.routes.draw do
 
  resources :articles
  resources :teams
  resources :games
  resources :sponsors
  resources :vcr_teams
 
  root 'welcome#index'
end
