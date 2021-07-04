Rails.application.routes.draw do
  resources :feeds

  root 'feeds#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
