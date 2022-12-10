Rails.application.routes.draw do
  #get 'users/edit'
  #get 'users/show'
  #get 'users/index'
  #上記を書き一行に変更
  resources :users, only: [:show, :edit, :index, :update]
  #get 'books/index'
  #get 'books/show'
  #get 'books/edit'
  #上記を書き一行に変更
  resources :users, only: [:show, :edit, :index]
  get 'homes/top'
  devise_for :users
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
