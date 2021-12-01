Rails.application.routes.draw do
  root 'home#home'
  get 'contact', to:'home#contact'
  post 'request_contact', to: 'home#request_contact'

  get 'home', to: 'home#home'
end
