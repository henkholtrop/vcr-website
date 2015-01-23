Rails.application.routes.draw do
 
  resources :articles
  resources :teams
 
  root 'welcome#index'
end
