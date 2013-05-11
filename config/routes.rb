Portal1871::Application.routes.draw do
  root :to => 'Pages#home'
  resources :users, :companies, :roles, :resources,
        :needs, :skills, :levels, :memberships

  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create', as: 'sessions'
  delete '/sessions' => 'sessions#destroy', as: 'session'
end
