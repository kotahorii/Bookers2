Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  # get 'users/show'
  # get 'users/edit'
  devise_for :users
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :create, :show, :edit, :update]

end
