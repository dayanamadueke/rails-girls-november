Rails.application.routes.draw do
  resources :mentoras
  # get 'mentoras', to: "mentoras#index", as: "mentoras"
  # get 'mentora/:id', to: "mentoras#show", as: "mentora"
  # get 'mentoras/new', to: "mentoras#new" 
  # post 'mentoras', to: "mentoras#create"
  # patch 'mentora/:id', to: "mentoras#update", as: "edit"
end
