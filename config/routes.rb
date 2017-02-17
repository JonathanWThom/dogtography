Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :packages do
    resources :comments
  end
end
