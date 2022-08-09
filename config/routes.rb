Rails.application.routes.draw do
  # show all
  get 'tasks', to: 'tasks#index'
  # add a task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # view one
  get 'tasks/:id', to: 'tasks#show', as: :task
end
