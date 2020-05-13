Rails.application.routes.draw do
  get 'folder/index'
  get 'folder/show'
  root 'home#index'

  resources :folders
  resources :documents
end
