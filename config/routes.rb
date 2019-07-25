Rails.application.routes.draw do
  resources :projects
  resources :teams
  resources :estimates

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root "projects#index"
end
