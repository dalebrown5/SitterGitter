Rails.application.routes.draw do
   
  resources :sitters

  resources :list_items

  get 'users/update'

  get 'users/show'

  get 'users/edit'

  get 'users/index'

  devise_for :users
  
  get 'about' => 'welcome#about' 

  root to: 'welcome#index'
 
end
