Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'reservations#index'
  resources :customers do
 		resources :reservations
	end
end
