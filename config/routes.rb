Rails.application.routes.draw do

  resources :bloggers, only: [:index, :show, :new, :create]
  resources :posts, only: [:index, :show]
  resources :destinations, only: [:index, :show]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
