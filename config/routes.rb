Rails.application.routes.draw do
  

  get '/store_items/about', to: 'store_items#about'
  get '/store_items/store_front', to: 'store_items#store_front'
  resources :store_items 
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  
root 'welcome#index'
end
