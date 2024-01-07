Rails.application.routes.draw do
  get 'comments/index'
  root 'blogs#index'
  resources :blogs
  resources :comments
  devise_for :authors
  
end
