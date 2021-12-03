Rails.application.routes.draw do
  resources :movies
  root 'home#home'
  get 'home', to: 'home#home'
  get 'contact', to:'home#contact'
  post 'request_contact', to: 'home#request_contact'
end
