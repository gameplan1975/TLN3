Rails.application.routes.draw do
  root "homes#top"
  get 'homes/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers:{
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
end
