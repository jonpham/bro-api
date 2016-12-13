Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      get '/bros', to: 'bros#index'
      get '/bros/:id', to: 'bros#show'
      post '/bros', to: 'bros#create'
      patch '/bros/:id', to: 'bros#update'
      delete 'bros/:id', to: 'bros#destroy'
    end

    namespace :v2 do 
      get '/bros', to: 'bros#index'
      get '/bros/:id', to: 'bros#show'
      post '/bros', to: 'bros#create'
      patch '/bros/:id', to: 'bros#update'
      delete 'bros/:id', to: 'bros#destroy'
    end
  end
end
