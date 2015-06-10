Rails.application.routes.draw do
 
  resources :articles
  resources :teams
  resources :games
  resources :sponsors
  resources :vcr_teams
  resources :vcr_games
  resources :members
  resources :content_pages
 
  root 'welcome#index'
end
