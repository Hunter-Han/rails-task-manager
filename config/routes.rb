Rails.application.routes.draw do
  get 'list', to: 'task#list', as: :list
  get 'details/:id', to: 'task#find_task', as: :task
  patch "details/:id", to: "task#update"
  delete "task/:id", to: 'task#delete', as: :delete

  get 'form', to: 'task#form', as: :form
  post 'tasks', to: 'task#create', as: :tasks
  get "details/edit/:id", to: "task#edit", as: :edit
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
