Rails.application.routes.draw do
  get 'purchases/index'
  get 'purchases/done'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }


  resources :addresses, only: [:new, :create]
  resources :items do
    collection do
      get 'pay'
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end

  resources :mypages, only: [:show, :destroy]

  resources :cards, only: [:new, :show, :create] do
    collection do
      post 'show', to: 'cards#show'
      post 'pay', to: 'cards#pay'
      post 'delete', to: 'cards#delete'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "homes#top"
end