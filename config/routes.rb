Rails.application.routes.draw do
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  # DBに投稿するためpost
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  #フォームの値を受けるのでpost
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  get '/' => 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about' => 'home#about'
end
