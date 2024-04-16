Rails.application.routes.draw do
  root to: 'posts#index'

  devise_for :users

  authenticate :user do
    # resources :fjords, only: [:new, :create, :edit, :update, :destroy]
    resources :posts, only: [:new, :create, :edit, :update, :destroy]
  end
  # devise_scope :user do
  #
  # end

  resources :posts, only: [:index, :show]
end
