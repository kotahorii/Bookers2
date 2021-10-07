Rails.application.routes.draw do
  root to: 'homes#top'
  get 'users/show'
  get 'users/edit'
  devise_for :users

end
