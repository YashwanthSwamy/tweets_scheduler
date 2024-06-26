Rails.application.routes.draw do
  # get "/", to:"main#index"
  root to:"main#index"

  get "sign_up", to:"registration#new"
  post "sign_up", to:"registration#create"

  get "sign_in", to:"sessions#new"
  post "sign_in", to:"sessions#create"

  get "passwords", to:"passwords#edit", as: :edit_password
  patch "passwords", to:"passwords#update"

  get "password/reset", to:"password_reset#new", as: :password_reset
  post "password/reset", to:"password_reset#create"
  get "password/reset/edit", to:"password_reset#edit"
  patch "password/reset/edit", to:"password_reset#update"

  delete "logout", to:"sessions#destroy"

  get "about", to:"about#index", as: :about # 
end
