Rails.application.routes.draw do

  devise_for :users
   
  resources :list_items

  resources :sitters
  
  get 'about' => 'welcome#about' 

  root to: 'welcome#index'
 
end
