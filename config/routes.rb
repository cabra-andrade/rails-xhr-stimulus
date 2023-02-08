Rails.application.routes.draw do
  resources :pets, only: :index do
    get :search, on: :collection
  end
end
