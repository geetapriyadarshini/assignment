Rails.application.routes.draw do
  resources :authors
  resources :books
  namespace :api do
  	namespace :v1 do
  		resources :authors,only: %i(show)
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
