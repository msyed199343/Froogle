Rails.application.routes.draw do
  resources :users
  resources :store_items 
  get '/store_items/store_front', to: 'store_items#store_front'
  resources :search_tables
  

end
