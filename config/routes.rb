Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :commercials
   get "/users/:id/commercials",to: "users#coms"
  post "/login", to: "sessions#create"
end
