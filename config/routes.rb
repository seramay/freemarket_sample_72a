Rails.application.routes.draw do
  
  get 'purchases/index'
  get 'purchases/done'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }


  resources :items, only: [:new, :show] do
    collection do
      get 'pay'
    end
  end
  resources :addresses, only: [:new, :create]
  resources :mypages, only: [:show, :destroy]
  resources :cards, only: [:new, :show, :create] do
    collection do
      post 'show', to: 'cards#show'
      post 'pay', to: 'cards#pay'
      post 'delete', to: 'cards#delete'
    end
  end
  resources :addresses, only: [:new, :create]

  resources :purchases, only: [:index] do
    collection do
      get 'index', to: 'purchases#index'
      post 'pay', to: 'purchases#pay'
      get 'done', to: 'purchases#done'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "homes#top"
end
