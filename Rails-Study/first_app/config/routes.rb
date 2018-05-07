Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index.html.erb'
  #get '/' => 'home#index.html.erb'

  get '/animals/cat' => 'animals#cat'
  get '/animals/dog' => 'animals#dog'
  get '/animals' => 'animals#index.html.erb'

  get '/music/index' => 'music#index'
  get '/music/1' => 'music#movie_1'
  get '/music/2' => 'music#movie_2'
  get '/music/3' => 'music#movie_3'

end
