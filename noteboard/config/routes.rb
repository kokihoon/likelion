Rails.application.routes.draw do
  root 'posts#index'

  get 'posts/index'

  get 'posts/new'

  get 'posts/destroy/:post_id',to: 'posts#destroy' ,as: 'post_destroy'

  get 'posts/edit/:post_id' => 'posts#edit'

  post 'posts/create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
