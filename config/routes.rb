Rails.application.routes.draw do
  namespace :admin do
      resources :auditions
      resources :casting_directors
      resources :casting_agencies
      resources :agencies
      resources :reps
      resources :coaches
      resources :actors
      root to: "users#index"
    end
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
