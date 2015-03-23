Rails.application.routes.draw do

  resources :git_sitters

  devise_for :users
   
  resources :list_items

  resources :sitters, except: [:new] do
    resources :sitter_selections, only: [:create, :destroy]
  end
  
  get 'about' => 'welcome#about' 

  root to: 'welcome#index'
 
end
