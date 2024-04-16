Rails.application.routes.draw do
  # get "/", to:"main#index"
  root to:"main#index"

  get "sign_up", to:"registration#new"
  post "sign_up", to:"registration#create"

  get "sign_in", to:"sessions#new"
  post "sign_in", to:"sessions#create"

  get "passwords", to:"passwords#edit", as: :edit_password
  patch "passwords", to:"passwords#update"

  delete "logout", to:"sessions#destroy"

  get "about", to:"about#index", as: :about # 
end
