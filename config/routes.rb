Rails.application.routes.draw do
  get 'post1s/new'
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/top' => 'root#top'

 post '/post1s' => 'post1s#create'

 get '/post1s' => 'post1s#index'

 get '/post1s/:id' => 'post1s#show',as: 'post1'
 # /posts/1や/posts/3に該当する
end