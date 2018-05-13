Rails.application.routes.draw do


  #note
  #Create
  get '/notes/new' => 'notes#new'
  post '/notes' => 'notes#create'

  #Read
  get '/notes' => 'notes#index'
  get '/notes/:id' => 'notes#show'

  #Update
  get '/notes/:id/edit' => 'notes#edit'
  patch '/notes/:id' => 'notes#update'

  # Destroy
  delete '/notes/:id'=> 'notes#destroy'

  get '/utilities' => 'utilities#index'

  get '/utilities/pick_lucky_numbers'

  get '/utilities/get_stock_info'
  get '/utilities/show_stock_info'  => 'utilities#show_stock_info'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  #get '/' => 'home#index'

  get '/animals/cat' => 'animals#cat'
  get '/animals/dog' => 'animals#dog'
  get '/animals'  => 'animals#index.html.erb'

  get '/musics/index' => 'musics#index'
  get '/musics/1' => 'musics#music_1'
  get '/musics/2' => 'musics#music_2'
  get '/musics/3' => 'musics#music_3'

end
