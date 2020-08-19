Rails.application.routes.draw do
  root "homes#top"
  get 'homes/top'
  get 'games/prepare'
  get 'games/result'
  get 'games/play'
  get 'games/play_a'
  get 'games/result_a'
  resources :genres
  resources :questions
  resources :players

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers:{
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
end
