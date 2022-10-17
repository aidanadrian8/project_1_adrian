Rails.application.routes.draw do
  devise_for :event_organizers
  resources :event_organizers
  resources :dog_shows
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :event_schedule

  # Defines the root path route ("/")
  # root "articles#index"
end
