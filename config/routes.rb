Rails.application.routes.draw do
  resources :exercise_stats
  resources :exercise_names
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root "main#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
