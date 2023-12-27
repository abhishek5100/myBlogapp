Rails.application.routes.draw do
  get 'comments/index'
  get 'blogs/index'
  resources :blogs
  resources :comments
  devise_for :authors
  
end
