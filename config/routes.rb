Rails.application.routes.draw do
 
  resources :articles
  resources :teams
  resources :games
 
  root 'welcome#index'
end
