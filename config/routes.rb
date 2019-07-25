Rails.application.routes.draw do
  resources :projects do resources :estimates, only: [:new, :create] end
  resources :teams
  resources :estimates

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root "projects#index"
end
