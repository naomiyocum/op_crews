Rails.application.routes.draw do
  get '/crews', to:'crews#index'
  get '/crews/:id', to:'crews#show'

  get '/characters', to:'characters#index'
end
