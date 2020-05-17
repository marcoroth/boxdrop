Rails.application.routes.draw do
  root 'folders#index'

  resources :folders
  resources :documents
end
