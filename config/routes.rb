Rails.application.routes.draw do
  # resources :courses
  # resources :professors
  # resources :students
  
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :courses
      resources :professors
      resources :students
    end
  end
end
