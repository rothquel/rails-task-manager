Rails.application.routes.draw do
  # show all
  get 'tasks', to: 'tasks#index'
  # add a task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # view one
  get 'tasks/:id', to: 'tasks#show', as: :task
  # edit task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"
  # delete task
  delete "tasks/:id", to: "tasks#destroy", as: :delete
end
