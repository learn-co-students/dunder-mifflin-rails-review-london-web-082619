Rails.application.routes.draw do
  get '/dogs', to: 'dogs#index', as: 'dogs'
  get '/dogs/new', to: 'dogs#new', as: 'new_dog'
  get '/dogs/:id', to: 'dogs#show', as: 'dog'
  get '/dogs/:id/edit', to: 'dogs#edit', as: 'edit_dog'
  post '/dogs', to: 'dogs#create'
  patch '/dogs/:id', to: 'dogs#update'
  delete '/dogs/:id', to: 'dogs#destroy'

  get 'employees', to: 'employees#index', as: 'employees'
 get '/employees/new', to: 'employees#new', as: 'new_employee'
 get '/employees/:id', to: 'employees#show', as: 'employee'
get '/employees/:id/edit', to: 'employees#edit', as: 'edit_employee'
  post '/employees', to: 'employees#create'
  patch '/employees/:id', to: 'employees#update'
  delete '/employees/:id', to: 'employees#destroy'



end
