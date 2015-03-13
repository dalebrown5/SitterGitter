Rails.application.routes.draw do

  devise_for :users
   
  resources :list_items

  resources :sitters do
    resources :sitter_selections, only: [:create, :destroy]
  end
  
  get 'about' => 'welcome#about' 

  root to: 'welcome#index'
 
end
