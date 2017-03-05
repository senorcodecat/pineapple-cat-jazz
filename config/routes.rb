Rails.application.routes.draw do
  resources :faqs
  devise_for :users
  resources :courses
  root to: "welcome#index" # GET / execute WelcomeController index action
  get '/about' => "welcome#about"
  get '/faq' => "welcome#faq"
  get '/pricing' => "welcome#pricing"



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
