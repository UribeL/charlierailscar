Rails.application.routes.draw do
  get '/cars/create' => 'cars#create'
  get '/status' => 'cars#status'
  get '/cars/accelerate' => 'cars#accelerate'
  get '/cars/decelerate' => 'cars#decelerate'
  get '/new' => 'cars#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
