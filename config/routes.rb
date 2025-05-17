Rails.application.routes.draw do
  # get 'homes/top' ←rootで不要になった
  resources :posts
  root to: "homes#top"
end
