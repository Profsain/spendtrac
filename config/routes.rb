Rails.application.routes.draw do
  default_url_options :host => "spendtrac.com"
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'categories#index'
  resources :categories, only: [:index, :show, :new, :create, :destroy] do
    resources :expenditure, only: [:index]
  end

  resources :expenditures, only: [:new, :create, :destroy]
end
