Rails.application.routes.draw do
   
  resources :owners
  resources :pets
  #scope module: :api do
   # resources :pets

    
  #end
  
end
