Rails.application.routes.draw do
  
  resources :articals
   root "articals#index"
  # get 'authors/index'
  #  root "book#index"
   
   resources :book
    resources :authors

end
