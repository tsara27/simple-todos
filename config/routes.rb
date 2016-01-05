Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    resources :todos, only: [:create, :update, :destroy] do
      delete 'destroy_all', on: :collection
    end
  end

  resources :home, only: :index
end
