Rails.application.routes.draw do
  resources :tasks
  devise_for :users
  root 'main#home'
end
