Portal1871::Application.routes.draw do
  root :to => 'Pages#home'
  resources :users, :companies, :roles, :resources,
        :needs, :skills, :levels, :memberships
end
