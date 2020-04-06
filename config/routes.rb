Rails.application.routes.draw do
  resources "items/pay"
  resources "items/show"
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "homes#top"
end