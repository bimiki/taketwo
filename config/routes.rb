Rails.application.routes.draw do
  resources :messages
  devise_for :users
  resources :mainthreads


  root 'mainthreads#index'

  get 'images/default_profile'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
