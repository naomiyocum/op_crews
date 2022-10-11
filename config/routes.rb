Rails.application.routes.draw do
  get '/crews', to:'crews#index'
  get '/crews/:id', to:'crews#show'
end
