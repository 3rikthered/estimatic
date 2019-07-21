Rails.application.routes.draw do
  resources :projects
  resources :teams

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root "projects#index"
end
