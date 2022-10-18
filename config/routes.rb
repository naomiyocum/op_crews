Rails.application.routes.draw do
  get '/', to: 'welcome#index'

  get '/crews/:id/characters/new', to: 'crew_characters#new'
  get '/crews/:id/characters', to:'crew_characters#index'
  post '/crews/:id/characters', to:'crew_characters#create'

  get '/crews', to:'crews#index'
  get '/crews/new', to: 'crews#new'
  get '/crews/:id', to:'crews#show'
  get '/crews/:id/edit', to:'crews#edit'
  post '/crews', to:'crews#create'
  patch '/crews/:id', to: 'crews#update'
  delete 'crews/:id', to:'crews#destroy'
  
  get '/characters/:id/edit', to:'characters#edit'
  get '/characters', to:'characters#index'
  get '/characters/:id', to:'characters#show'
  patch '/characters/:id', to: 'characters#update'
  delete 'characters/:id', to:'characters#destroy'
end
