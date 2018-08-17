Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'


  get '/my_profile', to: 'profiles#show'
  get '/new_profile', to: 'profiles#new'
  post '/create_profile', to: 'profiles#create'
  get '/edit_profile', to: 'profiles#edit'
  patch '/update_profile', to: 'profiles#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
