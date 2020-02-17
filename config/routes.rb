Rails.application.routes.draw do
    root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'users/sign_up', to: "users#new"
	post 'users', to: "users#create"
	resources :sessions, only: [:create, :destroy, :new]
end

