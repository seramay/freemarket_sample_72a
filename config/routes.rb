Rails.application.routes.draw do
  resources :items do
    collection do
      get 'pay'
    end

  resources :items,only: [:show]
    end
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  resources :items do
    collection do
      get 'pay'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "homes#top"
end