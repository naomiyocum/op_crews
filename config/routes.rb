Rails.application.routes.draw do
  get '/crews', to:'crews#index'
  get '/crews/:id', to:'crews#show'
  get '/crews/:id/characters', to:'crews#chars_index'

  get '/characters', to:'characters#index'
  get '/characters/:id', to:'characters#show'
end
