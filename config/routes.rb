Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  root 'profiles#index'
  resources :profiles, only: :show do
    resources :comments, only: [:create, :destroy]
  end
end
