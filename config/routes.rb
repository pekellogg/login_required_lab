Rails.application.routes.draw do
  post "/sessions", to: "sessions#create"
  get "/sessions/new", to: "sessions#new", as: "login"
  post "/sessions/destroy", to: "sessions#destroy", as: "logout"

  get "/secret", to: "secrets#show"
end