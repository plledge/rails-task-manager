Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
# The new route has to be declared before the show route.

# Create a New Task
# task form (levar voce ao formulario)
get '/tasks/new', to: 'tasks#new'
#  post form (postar as infos no controller)
post '/tasks', to: 'tasks#create'

# Read All and One task
get '/tasks/', to: 'tasks#index'
get 'tasks/:id', to: 'tasks#show', as: :show_task

# Update a task created
  # formulario para edicao
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # rout new infos to controller (save method is here)
  patch 'tasks/:id', to: 'tasks#update', as: :task

# Delete
  delete '/tasks/:id', to: 'tasks#destroy'

end
