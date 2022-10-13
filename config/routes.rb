Rails.application.routes.draw do
  get '/crews/:id/characters/new', to: 'characters#new'
  get '/crews', to:'crews#index'
  get '/crews/new', to: 'crews#new'
  get '/crews/:id', to:'crews#show'
  get '/crews/:id/edit', to:'crews#edit'
  
  get '/crews/:id/characters', to:'crew_characters#index'

  get '/characters/:id/edit', to:'characters#edit'
  get '/characters', to:'characters#index'
  get '/characters/:id', to:'characters#show'

  post '/crews', to:'crews#create'
  patch '/crews/:id', to: 'crews#update'

  post '/crews/:id/characters', to:'characters#create'
  patch '/characters/:id', to: 'characters#update'

  delete 'crews/:id', to:'crews#destroy'
  delete 'characters/:id', to:'characters#destroy'

end
