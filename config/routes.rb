Rails.application.routes.draw do
  root to: 'users#new'
  resources :sessions, only: %i[new create destroy]
  resources :users, only: %i[new create show]
  resources :pictures do
    collection do
      post :confirm
    end
  end
end
