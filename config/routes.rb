Rails.application.routes.draw do
  devise_for :users
  root "grams#index"
  resources :grams do
    resource :comments, only: :create
  end
end
