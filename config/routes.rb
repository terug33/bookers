Rails.application.routes.draw do
  # get 'homes/top' ←rootで不要になった
  resources :books
  root to: "books#index"
end
