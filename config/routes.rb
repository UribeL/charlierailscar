Rails.application.routes.draw do
  get '/' => 'cars#create'
  get '/status' => 'cars#status'
  get '/cars/accelerate' => 'cars#accelerate'
  get '/cars/decelerate' => 'cars#decelerate'
  get '/new' => 'cars#new'
  get '/cars/light_toggle' => 'cars#light_toggle'
  get '/cars/parking_toggle'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
