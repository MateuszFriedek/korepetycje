Rails.application.routes.draw do
  resources :logins
  resources :klasses
  resources :reviews
  resources :users
  resources :tutors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
