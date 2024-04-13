Rails.application.routes.draw do
  # get "/", to:"main#index"
  root to:"main#index"
  get "about", to:"about#index", as: :about # 
end
