Rails.application.routes.draw do
  namespace :api do
  	resources :employees
  	resources :competences
  end

end
