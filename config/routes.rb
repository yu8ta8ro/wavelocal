Rails.application.routes.draw do
  devise_for :companies
  devise_for :users

  root 'tops#index'
  resources :usereets
  resources :companyeets do
    resources :likes, only: [:create, :destroy]
  end

  resources :tops
  resources :users
  resources :companies
  resources :links, only: [:index]

end
