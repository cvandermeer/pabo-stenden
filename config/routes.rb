Rails.application.routes.draw do
	root to: "questions#index"
	resources :questions
	resources :answers
end
