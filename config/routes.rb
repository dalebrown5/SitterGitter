Rails.application.routes.draw do
   
  resources :list_items

  resources :sitters

  devise_for :users
  
  get 'about' => 'welcome#about' 

  root to: 'welcome#index'
 
end
