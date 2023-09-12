Rails.application.routes.draw do
  devise_for :users
  resources :expenses
  resources :users
  # root 'users#index'
  root 'expenses#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
