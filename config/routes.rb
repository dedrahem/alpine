Rails.application.routes.draw do

  root 'homepage#index'  # A, BiggHoss view homepage top 2

  #  What comes first create new user - start session ?  CREATE NEW USER

  get 'posts' => 'posts#index',as: :posts  # B, Gateway list index view
  get 'posts/new' => 'posts#new',as: :new_post # D, user get HTML form to create new post
  get 'posts/:id' => 'posts#show',as: :post # C, get a specific post and display it
  post "posts" => 'posts#create'
  post 'posts/:id/upvote' => 'posts#upvote', as: :upvote_post
  post 'posts/:id/downvote' => 'posts#downvote', as: :downvote_post
  delete "posts/:id" => 'posts#delete'
  patch "posts/:id" => 'posts#update'

  get "posts/:id/edit" => 'posts#edit',as: :edit_post
  get 'users/new' => 'users#new', as: :new_user  # G returns the

  get "users/:id" => 'users#show',as: :user
  delete "user/:id" => 'users#delete'
  patch "user/:id" => 'users#update'

  get 'users/index' => 'users#index' # G display list of all USERS

  #  ..... HTML form for setup and creation of New User
  post 'users' => 'users#create', as: :users # G  on click write_data & create_user_info

  delete 'users/:id' => 'users#delete' # G destroy user

  get 'posts/:id/comments/new' => 'comments#new', as: :new_comment # H click on ADD COMMENT
  # ...in the  SHOW, posts/id..returns HTML form for creating new comment
  #  .....goes to ....posts/id/comments/new  is a form for new comment in VIEW/comments/new ,,
  #  .form has a button to once entered, POSTs that new comment see J
  post 'posts/:id/comments' => 'comments#create_comment', as: :comments # J  post here
  #   is THE actual action of create/write/save  of data ..for NEW COMMENT... CHECK THIS!!
  #  the def create_comment in the COMMENTS CONTROLLER will then complete the action with a, ..
  #  .....................    redirect_to post_path(id: @post.id)   ...............

  get 'sessions/new' => 'sessions#new', as: :sign_in # E request get and
  # .....returns a form for creating a new session
  post 'sessions/new' => 'sessions#create' # E click and create new session
  delete 'sessions' => 'sessions#delete', as: :sign_out # F destroy and sign out

  #  get '/register' => 'registration#new', as: :new_user
  #  post '/register' => 'registration#create', as: :users


end
