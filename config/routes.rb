Rails.application.routes.draw do
 
  resources :articles
  resources :teams
  resources :games
  resources :sponsors
 
  root 'welcome#index'
end
