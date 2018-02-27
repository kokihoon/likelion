Rails.application.routes.draw do
  root 'posts#index'

  get 'posts/index'

  get 'posts/new'

  delete'posts/destroy/:post_id' ,to: 'posts#destroy' ,as: 'post_destroy'

  patch 'posts/edit/:post_id' ,to: 'posts#edit' ,as: 'post_edit'

  post 'posts/create'

  post 'posts/update/:post_id',to: 'posts#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
