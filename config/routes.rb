Rails.application.routes.draw do
  resources :responses
  resources :multiple_choice_options
  resources :questions
  resources :houses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'questions#index'
end
