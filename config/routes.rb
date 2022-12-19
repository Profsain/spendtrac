Rails.application.routes.draw do
  default_url_options :host => "spendtrac.com"
  get 'pages/splashscreen'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#splashscreen'
end
