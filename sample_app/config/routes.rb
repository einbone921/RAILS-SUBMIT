Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
  # .../todolists/1 や　.../todolist/3 に該当
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
end