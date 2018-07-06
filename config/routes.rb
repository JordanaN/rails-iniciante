Rails.application.routes.draw do

  resources :books
  # colocando uma page como start da aplicação
  root :to => 'hello#index'

  # rotas do PersonController
  # As rotas são sempre definidas no plural

  get '/person' => 'person#index'
  get '/person/new' => 'person#new'
  get '/person/:id' => 'person#show'
  post '/person' => 'person#create'
  delete '/person/id' => 'person#destroy'

  # mapeando todas as rotas
  # resources :hello
end
