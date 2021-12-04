Rails.application.routes.draw do
  devise_for :users
  # Resource paths.
  resources :reviews
  resources :movies

  # Home page is the root.
  root 'home#home'

  #Route to home page.
  get 'home', to: 'home#home'

  # Contact Page.
  get 'contact', to:'home#contact'
  post 'request_contact', to: 'home#request_contact'
end
