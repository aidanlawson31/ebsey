Rails.application.routes.draw do
  devise_for :users
  resources :accounts
  resources :categories
  
  resources :products do
    member do
      post :buy
    end
    
    collection do 
      get :my_listings
      get :purchases
    end
  end
  
  resources :reviews
  
  root 'products#index'
end
