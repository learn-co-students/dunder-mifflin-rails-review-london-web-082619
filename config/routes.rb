Rails.application.routes.draw do
  post '/dogs', to: "dogs#reorder", as: "reorder_dogs"
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
