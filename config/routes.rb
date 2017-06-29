Rails.application.routes.draw do
	root to: "books#index"

	resources :books do
		resources :notes, only: [:create, :destroy]
	end
	resources :sessions, only: [:new, :create, :destroy]

	get "/login" => "sessions#new", as: "login"
	delete "/logout" => "sessions#destroy", as: "logout"
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
