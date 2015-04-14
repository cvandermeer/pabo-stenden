Rails.application.routes.draw do
  devise_for :users
	root to: "static_pages#dashboard"
	resources :questions, path: 'vragen'
	resources :answers, path: 'antwoorden'
	resources :appointments, path: 'afspraken'
	resources :agendas, path: 'agendas'
	resources :tests, path: 'toetsen'
	get 'tests/:id/take_test' => 'tests#take_test', as: 'take_test' 
	resources :test_sessions
	resources :test_session_questions
end
