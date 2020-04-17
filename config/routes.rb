Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }

  
  resources :addresses, only: [:new, :create]
  resources :items, only: [:new, :create, :show] do
    collection do
      get 'pay'
    end
  end
  
  resources :mypages, only: [:show, :destroy]
  
  resources :cards, only: [:new, :create]
  
  root "homes#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
