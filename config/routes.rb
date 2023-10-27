Rails.application.routes.draw do
  # root 'cars#index'
  # resources :cars
  # resources :articals
  #  root "articals#index"
  # get 'authors/index'
  # root "person#index" 
  # resources :person
  
  # root "book#index"
  root "authors#index"
   resources :book
    resources :authors

end
