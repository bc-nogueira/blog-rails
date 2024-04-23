Rails.application.routes.draw do
  root to: 'posts#index'

  devise_for :users

  authenticate :user do
    resources :comments, only: :destroy
    resources :posts, only: [:new, :create, :edit, :update, :destroy]
    resources :users, only: :show
  end
  # devise_scope :user do
  #
  # end

  resources :comments, only: :create
  resources :posts, only: [:index, :show]
end
