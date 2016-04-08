Rails.application.routes.draw do

  root 'homepage#index'
  get "posts" => 'posts#index',as: :posts


  #  get "posts/new" => 'posts#new',as: :new_post
  
  #  get "authors/new" => "by_author#new",as: :new_author
  #  get "authors" => 'by_author#index',as: :authors
  #  post 'authors' => 'by_author#create'
  #  post "posts" => 'posts#create'
  #  get "posts" => 'posts#index'
  #  get "posts/:id" => 'posts#show',as: :post
  #  delete "posts/:id" => 'posts#delete'
  #  patch "posts/:id" => 'posts#update'
  #  get "posts/:id/edit" => 'posts#edit',as: :edit_post
  #  get "authors/:id" => 'by_author#show',as: :author
  #  delete "authors/:id" => 'by_author#delete'
  #  patch "by_author/:id" => 'by_author#update'
end
