Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :surveys
  match '/surveys/download', to: 'surveys#download', as: 'download', via: :post
  match "/users/update_privacy", to: "users#update_privacy", via: :post
  root 'dashboard#index'
end
