Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index" # GET / execute WelcomeController index action
  get '/about' => "welcome#about"
  get '/faq' => "welcome#faq"
  get '/pricing' => "welcome#pricing"

  resources :courses

  # get '/courses' => 'courses#index'
  # get '/courses/:id' => 'courses#show'
  #
  # get '/courses/:id/edit' => 'courses#edit'
  # put '/courses/:id' => 'courses#update'
  #
  # get '/courses/new' => 'courses#new'
  # post '/courses' => 'courses#create'
  #
  # delete '/courses/:id' => 'courses#destroy'
end
