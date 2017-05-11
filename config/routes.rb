Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'articles#index'

  # articles management
  get 'articles' => 'articles#index'
  post 'articles' => 'articles#create'
  patch 'articles/:id' => 'articles#update'
  get 'articles/new' => 'articles#newArticle'
  get 'articles/:id' => 'articles#show'
  delete 'articles/:id' => 'articles#destroy'

  # tags management
  get 'tags' => 'articles#manageTags'
  delete 'tags/:id' => 'articles#destroyTag'
  post 'tags' => 'articles#createTag'

  # pages
  get 'timeline' => 'pages#timeline'
  get 'map' => 'pages#map'
  get 'themes' => 'pages#themes'
  get 'search' => 'pages#search'
  get 'themes/:id' => 'pages#showTheme'

  # sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # errors
  get '/404' => 'errors#not_found' 
  get '/422' => 'errors#change_rejected'
end
