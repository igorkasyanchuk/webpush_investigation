Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'

  post '/push', to: 'home#push'
  post '/ping', to: 'home#ping'
end
