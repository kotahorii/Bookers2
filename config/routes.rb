Rails.application.routes.draw do
  root to: 'homes#top'
  # get 'users/show'
  # get 'users/edit'
  devise_for :users
  resources :books, only: [:index, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update]

end
