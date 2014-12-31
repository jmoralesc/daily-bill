Rails.application.routes.draw do
  resources :clients
  resources :bills
  resources :instalments do
    collection do
      get 'get_bills', to: "instalments#get_bills"
    end
  end
  root 'instalments#new'
end
