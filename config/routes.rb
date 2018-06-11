Rails.application.routes.draw do
  get 'post1s/new'
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/top' => 'root#top'

 post '/post1s' => 'post1s#create'

 get '/post1s' => 'post1s#index'

 get '/post1s/:id' => 'post1s#show', as: 'post1'
 # /posts/1や/posts/3に該当する

 get '/post1s/:id/edit' => 'post1s#edit', as: 'edit_post1'

 patch '/post1s/:id' => 'post1s#update', as: 'update_post1'

 delete '/post1s/:id' => 'post1s#destroy', as: 'destroy_post1'
end