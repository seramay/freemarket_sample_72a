Rails.application.routes.draw do
  get 'purchases/index'
  get 'purchases/done'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  
  resources :items, only: [:new, :show] do
    collection do
      get 'pay'
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end
  
  resources :mypages, only: [:show, :destroy]

  resources :cards, only: [:new, :show, :create, :destroy] do
    collection do
      post 'pay', to: 'cards#pay'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "homes#top"
end
