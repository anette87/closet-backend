Rails.application.routes.draw do
  resources :closets
  resources :items
  resources :users

  root 'closets#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
