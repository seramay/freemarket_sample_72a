Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }

  resources :items, only: [:new, :show]
  resources :addresses, only: [:new, :create]
  resources :items do
    collection do
      get 'pay'
    end
  end

  resources :mypages, only: [:show, :destroy]

  resources :cards, only: [:new, :create]
  resources :addresses, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "homes#top"
end