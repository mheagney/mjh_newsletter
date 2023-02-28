Rails.application.routes.draw do
  resources :templates
  resources :emails, only: [:new, :index, :create, :show]
  root "emails#index"
end
