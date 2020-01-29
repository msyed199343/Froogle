Rails.application.routes.draw do
  root 'welcome#index'

  get '/users/login_page', to: 'users#login_page'
  resources :users
  get '/store_items/store_front', to: 'store_items#store_front'
  resources :store_items 
  
  resources :search_tables
  

end
