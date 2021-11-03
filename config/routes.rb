Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  resources :users, :only=> [:show, :edit, :index, :new, :post, :update, :destroy]

  get 'home/about' => 'homes#about'
end
