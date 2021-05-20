Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/dogs', to: 'dogs#index', as: 'dogs'
    get '/dogs/:id', to: 'dogs#show', as: 'dog'

    get '/employees', to: 'employees#index', as: 'employees'
    get '/employees/new', to: 'employees#new', as: 'new_employee'
    get '/employees/:id', to: 'employees#show', as: 'employee'
    post '/employees', to: 'employees#create'
    get '/employees/:id/edit', to: 'employees#edit', as: 'edit_employee'
    patch '/employees/:id', to: 'employees#update'
    delete '/employees/:id', to: 'employees#destroy'

end
