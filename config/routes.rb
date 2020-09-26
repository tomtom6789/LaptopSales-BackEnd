Rails.application.routes.draw do
  
  resources :items, only: [:show, :index, :create, :destroy, :update]
  resources :categories, only: [:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
