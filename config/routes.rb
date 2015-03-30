Rails.application.routes.draw do
  devise_for :users
	root to: "static_pages#dashboard"
	resources :questions, path: 'vragen'
	resources :answers, path: 'antwoorden'
	resources :appointments, path: 'afspraken'
end
