Rails.application.routes.draw do
   resources :quizzes
   resources :players
   post '/login', to: 'authentication#create'
   get '/profile', to: 'players#show'
end
