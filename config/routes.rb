Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'user/registrations' }
  resources :users
  resources :dog_shows
  resources :account
  resources :ticket
  resources :attendees
  resources :my_calendar
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :event_schedule

  # Defines the root path route ("/")
  # root "articles#index"
end
