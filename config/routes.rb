Rails.application.routes.draw do
   resources :users
  get 'store_items/random', to: 'store_items#random'
  get '/store_items/about', to: 'store_items#about'
  get '/store_items/store_front', to: 'store_items#store_front'
  resources :store_items 
  resource :session, only: [:new, :create, :destroy]
 
  
root 'welcome#index'
end
