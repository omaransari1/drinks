Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/drinks' => 'drinks#index'
      post '/drinks' => 'drinks#create'
      get '/drinks/:id' => 'drinks#show'
      patch '/drinks/:id' => 'drinks#update'
      delete '/drinks/:id' => 'drinks#destroy'
    end

    namespace :v2 do
      get '/drinks' => 'drinks#index'
      post '/drinks' => 'drinks#create'
      get '/drinks/:id' => 'drinks#show'
      patch '/drinks/:id' => 'drinks#update'
      delete '/drinks/:id' => 'drinks#destroy'
    end
  end

  get '/' => 'drinks#index'
end
