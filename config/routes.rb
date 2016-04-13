Rails.application.routes.draw do

  root 'homepage#index'  # A, BiggHoss view homepage top 2

  #  What comes first create new user - start session ?  CREATE NEW USER

  get 'posts' => 'posts#index',as: :posts  # B, Gateway list index view
  get 'posts/:id' => 'posts#show',as: :post # C, get a specific post and display it
  get 'posts/new' => 'posts#new',as: :new_post # D, user get HTML form to create new post

  #  post "posts" => 'posts#create'
  #  delete "posts/:id" => 'posts#delete'
  #  patch "posts/:id" => 'posts#update'
  #  get "posts/:id/edit" => 'posts#edit',as: :edit_post

    # get "posts/new" => 'posts#new',as: :new_post
    # get "posts" => 'posts#index',as: :posts
    # get "authors/new" => "by_author#new",as: :new_author
    # get "authors" => 'by_author#index',as: :authors
    # post 'authors' => 'by_author#create'
    # post "posts" => 'posts#create'
    # get "posts" => 'posts#index'
    # get "posts/:id" => 'posts#show',as: :post
    # delete "posts/:id" => 'posts#delete'
    # patch "posts/:id" => 'posts#update'
    # get "posts/:id/edit" => 'posts#edit',as: :edit_post
    # get "authors/:id" => 'by_author#show',as: :author
    # delete "authors/:id" => 'by_author#delete'
    # patch "by_author/:id" => 'by_author#update'








  get 'users/index' => 'users#index' # G display list of all USERS
  get 'users/new' => 'users#new', as: :new_user # G returns the
  #  ..... HTML form for setup and creation of New User
  post 'users' => 'users#create'  # G  on click write_data & create_user_info
  delete 'users/:id' => 'users#delete' # G destroy user

  get 'posts/:id/comments/new' => 'comments#new', as: :new_comment # H click on ADD COMMENT
  # ...in the  SHOW, posts/id..returns HTML form for creating new comment
  #  .....goes to ....posts/id/comments/new  is a form for new comment in VIEW/comments/new ,,
  #  .form has a button to once entered, POSTs that new comment see J
  post 'posts/:id/comments' => 'comments#create', as: :comments # J  post here
  #   is THE actual action of create/write/save  of data ..for NEW COMMENT... CHECK THIS!!
  #  the def create_comment in the COMMENTS CONTROLLER will then complete the action with a, ..
  #  .....................    redirect_to post_path(id: @post.id)   ...............

  get 'sessions/new' => 'sessions#new', as: :sign_in # E request get and
  # .....returns a form for creating a new session
  post 'sessions/new' => 'sessions#create' # E click and create new session
  delete 'sessions' => 'sessions#delete', as: :sign_out # F destroy and sign out

  #  get "authors/:id" => 'by_author#show',as: :author
  #  delete "authors/:id" => 'by_author#delete'
  #  patch "by_author/:id" => 'by_author#update'
end
