Rails.application.routes.draw do
 
  resources :articles
  resources :teams
  resources :games
  resources :sponsors
  resources :vcr_teams
  resources :members
 
  root 'welcome#index'
end
