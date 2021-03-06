Rails.application.routes.draw do
  get 'searchs/search'
  root 'homes#top'
  get 'homes/about'
  devise_for :admins
  namespace :admin do
    resources :movies
    resources :genres, only: [:index, :edit, :create, :update, :destroy]
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  namespace :user do
    get '/favorete/:review_id/users' => 'favorite#index', as: 'favorite_index'
    post '/favorite/:review_id' => 'favorites#favorite', as: 'favorite'
    delete '/favorite/:review_id' => 'favorites#unfavorite', as: 'unfavorite'

    resources :users, only: [:show, :edit, :update, :index] do
      member do
        get :following, :followers
        put :out
      end
    end

    resources :relationships, only: [:create, :destroy]
    resources :movies, only: [:index, :show] do
      resources :reviews, only: [:edit, :update, :create, :destroy] do
        resources :comments, only: [:index, :create, :destroy]
        resources :movie_ranks, only: [:create]
      end
    end
    # resources :movie_ranks, only: [:create, :destroy]
    resources :genres, only: [:index, :show]
    resources :movie_ranks, only: [:destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
