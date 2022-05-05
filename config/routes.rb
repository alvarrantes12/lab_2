Rails.application.routes.draw do
  resources :owners
  scope module: :api do
    resources :pets
  end
end
