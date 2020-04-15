Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  
  root "homes#top"
  
  resources :items, only: [:new, :show]
  resources :items do
    collection do
      get 'pay'
    end
  end
  
  resources :mypages, only: [:show, :destroy]
  resources :cards, only: [:new, :create]
  resources :addresses, only: [:new, :create]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
