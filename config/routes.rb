Rails.application.routes.draw do
  resources :dogs, only: [:index, :show]
  resources :employees

  post "dogs", to: "dogs#reorder", as: "reorder_dogs"
end
