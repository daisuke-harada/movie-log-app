Rails.application.routes.draw do
  root 'homes#top'
  get 'homes/about'
  devise_for :admins
  namespace :admin do
    resources :movies
    resources :genres, only: [:index, :edit, :create, :update, :destroy]
  end

  devise_for :users
  namespace :user do
    get '/favorete/:review_id/users' => 'favorite#index', as: 'favorite_index'
    post '/favorite/:review_id' => 'favorites#favorite', as: 'favorite'
    delete '/favorite/:review_id' => 'favorites#unfavorite', as: 'unfavorite'
    get 'followers/:id' => 'followers#show', as: 'followers'
    get 'followings/:id' => 'followings#show', as: 'followings'
    resources :users, only: [:show, :edit, :update, :index] do
      member do
        get :quit
        patch :out
      end
    end
    resources :movies, only: [:index, :show]
    resources :genres, only: [:index, :show]
    resources :reviews do
      resources :comments, only: [:new, :create, :edit, :update, :destroy]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
